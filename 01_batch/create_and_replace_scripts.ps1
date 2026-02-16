<#
.SYNOPSIS
Creates standardized D-HYDRO batch files and replaces placeholder files in model folders.

.DESCRIPTION
This script performs two main actions:

1) Creates three batch files in the same directory where this PowerShell script is located:
   - run_simulation.bat
   - make_1d2dlinks.bat
   - run_partition.bat
   - run_simulation_parallel.bat

   The batch files call executables inside the provided -software_path.

2) Recursively scans the folder ../02_models (relative to the script location)
   and replaces extensionless placeholder files:
      run_simulation           -> run_simulation.bat
      make_1d2dlinks           -> make_1d2dlinks.bat
      run_partition            -> run_partition.bat
	  run_simulation_parallel  -> run_simulation_parallel.bat

   The replacement is done by deleting the placeholder and copying the newly
   created batch file into the same directory.

.PARAMETER software_path
Root path of the D-HYDRO installation.
Example:
    C:\Deltares\D-HYDRO

.PARAMETER DryRun
If specified, no changes are made.
The script prints what would be created, deleted, or copied.

.EXAMPLE
.\create_and_replace_scripts.ps1 -software_path "c:\Program Files\Deltares\Delft3D FM Suite 2025.02 HMWQ"

.EXAMPLE
.\create_and_replace_scripts.ps1 -software_path "c:\Program Files\Deltares\Delft3D FM Suite 2025.02 HMWQ" -DryRun

.NOTES
The script assumes the following relative structure:
    Script location
        └── ..\02_models

Batch files are written using ASCII encoding for compatibility.
#>

param(
    [Parameter(Mandatory = $true)]
    [string]$software_path,

    [switch]$DryRun
)

# ------------------------------------------------------------
# Resolve paths
# ------------------------------------------------------------

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ModelsDir = Resolve-Path (Join-Path $ScriptDir "..\02_models") -ErrorAction SilentlyContinue

if (-not (Test-Path $software_path)) {
    Write-Error "software_path does not exist: $software_path"
    exit 1
}

if (-not $ModelsDir) {
    Write-Error "Could not resolve ../02_models relative to script location."
    exit 1
}

Write-Host "Script directory: $ScriptDir"
Write-Host "Models directory: $ModelsDir"
Write-Host ""

if ($DryRun) {
    Write-Host "=== DRY RUN MODE: No changes will be made ==="
    Write-Host ""
}

# ------------------------------------------------------------
# 1) Create BAT files in script directory
# ------------------------------------------------------------

$filesToCreate = @{
    "run_simulation.bat" = @"
@ echo off
call "$software_path\plugins\DeltaShell.Dimr\kernels\x64\bin\run_dimr.bat" dimr.xml 
pause
"@

    "make_1d2dlinks.bat" = @"
@ echo off
call "$software_path\plugins\DeltaShell.Dimr\kernels\x64\bin\run_dflowfm.bat" --make1d2dlinks FlowFM_net.nc 
pause
"@

    "run_partition.bat" = @"
@ echo off
call "$software_path\plugins\DeltaShell.Dimr\kernels\x64\bin\run_dflowfm.bat" "--partition:ndomains=2:icgsolver=7" Waal.mdu
pause
"@

    "run_simulation_parallel.bat" = @"
@ echo off
call "$software_path\plugins\DeltaShell.Dimr\kernels\x64\bin\run_dimr_parallel.bat" 2 dimr.xml
pause
"@
}

foreach ($file in $filesToCreate.Keys) {
    $targetPath = Join-Path $ScriptDir $file

    if ($DryRun) {
        Write-Host "[DRYRUN] Would create: $targetPath"
    }
    else {
        Write-Host "Creating $targetPath"
        Set-Content -Path $targetPath -Value $filesToCreate[$file] -Encoding ASCII -Force
    }
}

Write-Host ""

# ------------------------------------------------------------
# 2) Recursive replacement in ../02_models
# ------------------------------------------------------------

$replacementMap = @{
    "run_simulation" = "run_simulation.bat"
    "make_1d2dlinks" = "make_1d2dlinks.bat"
    "run_partition" = "run_partition.bat"
	"run_simulation_parallel" = "run_simulation_parallel.bat"
}

foreach ($entry in $replacementMap.GetEnumerator()) {

    $sourceName = $entry.Key
    $targetName = $entry.Value

    $files = Get-ChildItem -Path $ModelsDir -Recurse -File |
             Where-Object { $_.Name -eq $sourceName }

    foreach ($file in $files) {

        $newPath = Join-Path $file.DirectoryName $targetName
        $sourceBat = Join-Path $ScriptDir $targetName

        if ($DryRun) {
            Write-Host "[DRYRUN] Would replace: $($file.FullName)"
            Write-Host "          With copy of: $sourceBat"
        }
        else {
            Write-Host "Replacing $($file.FullName) -> $newPath"
            Remove-Item $file.FullName -Force
            Copy-Item $sourceBat $newPath -Force
        }
    }
}

Write-Host ""
Write-Host "Done."
