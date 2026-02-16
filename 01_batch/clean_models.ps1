<#
.SYNOPSIS
Normalizes D-HYDRO model directories by replacing legacy batch files
and renaming DIMR configuration files.

.DESCRIPTION
This script standardizes model folders located in:

    ..\02_models

(relative to this script file)

Modify the path definition in the "Processing directory" section
if the project structure changes.

Operations (recursive):

1) Replace:
   run_simulation.bat
   start_dimr.bat
   run_dimr.bat
   -> run_simulation

2) Replace:
   make_1d2dlinks.bat
   -> make_1d2dlinks

3) Replace:
   run_partition.bat
   -> run_partition

4) Replace:
   run_simulation_parallel.bat
   -> run_simulation_parallel
   
5) Rename:
   dimr_config.xml
   -> dimr.xml

6) Delete files with extension:
    .cache
    .dia
    .mat

7) Delete folders named:
    output
    fig
    mat

.PARAMETER DryRun
Simulates execution without making changes.

#>
param(
    [switch]$DryRun
)

# ------------------------------------------------------------
# Processing directory (MODIFY HERE IF STRUCTURE CHANGES)
# ------------------------------------------------------------

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ModelsDir = Join-Path $ScriptDir "..\02_models"

if (-not (Test-Path $ModelsDir)) {
    Write-Error "Processing directory not found: $ModelsDir"
    exit 1
}

$ModelsDir = Resolve-Path $ModelsDir

Write-Host "Processing directory: $ModelsDir"

if ($DryRun) {
    Write-Host "=== DRY RUN MODE: No changes will be made ==="
}

Write-Host ""

[int]$script:DeletedCount = 0
[int]$script:CreatedCount = 0
[int]$script:RenamedCount = 0
[int]$script:DeletedFolderCount = 0

# ------------------------------------------------------------
# Helper function
# ------------------------------------------------------------

function Process-Replacement {

    param(
        [string]$TargetName,
        [string[]]$SourceNames
    )

    $files = Get-ChildItem -Path $ModelsDir -Recurse -File |
             Where-Object { $SourceNames -contains $_.Name }

    foreach ($group in ($files | Group-Object DirectoryName)) {

        $directory = $group.Name
        $targetPath = Join-Path $directory $TargetName

        foreach ($file in $group.Group) {

            if ($DryRun) {
                Write-Host "[DRYRUN] Would delete: $($file.FullName)"
            }
            else {
                Remove-Item $file.FullName -Force
            }

            $script:DeletedCount++
        }

        if (-not (Test-Path $targetPath)) {

            if ($DryRun) {
                Write-Host "[DRYRUN] Would create: $targetPath"
            }
            else {
                New-Item -Path $targetPath -ItemType File | Out-Null
            }

            $script:CreatedCount++
        }
    }
}

# ------------------------------------------------------------
# 1) run_simulation group
# ------------------------------------------------------------

Process-Replacement -TargetName "run_simulation" `
                    -SourceNames @(
                        "run_simulation.bat",
                        "start_dimr.bat",
                        "run_dimr.bat"
                    )

# ------------------------------------------------------------
# 2) make_1d2dlinks
# ------------------------------------------------------------

Process-Replacement -TargetName "make_1d2dlinks" `
                    -SourceNames @(
                        "make_1d2dlinks.bat"
                    )

# ------------------------------------------------------------
# 3) run_partition
# ------------------------------------------------------------

Process-Replacement -TargetName "run_partition" `
                    -SourceNames @(
                        "run_partition.bat"
                    )

# ------------------------------------------------------------
# 4) run_simulation_parallel
# ------------------------------------------------------------

Process-Replacement -TargetName "run_simulation_parallel" `
                    -SourceNames @(
                        "run_simulation_parallel.bat"
                    )
					
# ------------------------------------------------------------
# 5) Rename dimr_config.xml
# ------------------------------------------------------------

$xmlFiles = Get-ChildItem -Path $ModelsDir -Recurse -File -Filter "dimr_config.xml"

foreach ($file in $xmlFiles) {

    $newPath = Join-Path $file.DirectoryName "dimr.xml"

    if ($DryRun) {
        Write-Host "[DRYRUN] Would rename: $($file.FullName) -> $newPath"
    }
    else {
        Rename-Item $file.FullName -NewName "dimr.xml" -Force
    }

    $script:RenamedCount++
}

# ------------------------------------------------------------
# 6) Delete files by extension
# ------------------------------------------------------------

$extensionsToDelete = @('.cache', '.dia', '.mat')

$filesToDelete = Get-ChildItem -Path $ModelsDir -Recurse -File |
                 Where-Object { $extensionsToDelete -contains $_.Extension }

foreach ($file in $filesToDelete) {

    if ($DryRun) {
        Write-Host "[DRYRUN] Would delete: $($file.FullName)"
    }
    else {
        Remove-Item $file.FullName -Force
    }

    $script:DeletedCount++
}

# ------------------------------------------------------------
# 7) Delete folders by name
# ------------------------------------------------------------

$foldersToDelete = @('output', 'fig', 'mat')

$directories = Get-ChildItem -Path $ModelsDir -Recurse -Directory |
               Where-Object { $foldersToDelete -contains $_.Name } |
               Sort-Object FullName -Descending

foreach ($directory in $directories) {

    if ($DryRun) {
        Write-Host "[DRYRUN] Would delete folder: $($directory.FullName)"
    }
    else {
        Remove-Item $directory.FullName -Recurse -Force
    }

    $script:DeletedFolderCount++
}

Write-Host ""
Write-Host "-------------------------------------------"
Write-Host "Summary"
Write-Host "-------------------------------------------"
Write-Host "Files deleted : $DeletedCount"
Write-Host "Files created : $CreatedCount"
Write-Host "Files renamed : $RenamedCount"
Write-Host "Folders deleted : $DeletedFolderCount"
Write-Host "-------------------------------------------"
Write-Host ""

if ($DryRun) {
    Write-Host "Dry run completed. No changes were made."
}
else {
    Write-Host "Completed successfully."
}
