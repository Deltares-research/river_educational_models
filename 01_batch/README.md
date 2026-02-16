# How to Run a PowerShell Script (Step-by-Step)

The following instructions assume you have never used PowerShell before.

------------------------------------------------------------------------

## Step 1 - Start a PowerShell prompt


### Option 1 -- Open PowerShell Directly in the Folder (Easiest)

1.  Open **File Explorer**

2.  Navigate to the folder `01_batch`

3.  Click in the **address bar** at the top

4.  Type:

    `powershell`

5.  Press **Enter**

A blue PowerShell window will open in that folder.

## Option 2 -- Use the Windows Key and Navigate Manually

1.  Press the **Windows key** on your keyboard

2.  Type:

    `powershell`

3.  Press **Enter**

A PowerShell window will open.

Now navigate to the folder:

1.  Type:

    `cd "C:path_to_this_repository\\01_batch"`

2.  Press **Enter**

(Replace the path above with the actual path on your computer.)

------------------------------------------------------------------------

## Step 2 - Allow Script Execution (First Time Only)

If PowerShell blocks the script, type:

`Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass`

Press **Enter**, then type:

`Y`

and press **Enter** again.

This change applies only to the current window.

------------------------------------------------------------------------

## Step 3 - Run the Script

Type:

`./script_name.ps1`

Replace `script_name.ps1` with the actual file name.

Example:

`./create_and_replace_scripts.ps1`

Then press **Enter**.

------------------------------------------------------------------------

## Optional: Run in Dry Mode

Scripts support a DryRun mode:

`./script_name.ps1 -DryRun`

This shows what would happen without modifying files.

------------------------------------------------------------------------

# What These Scripts Do

The scripts are designed to:

- `clean_models.ps1`: Deletes all output folders and replaces batch files by empty file. No input argument. 
- `create_and_replace_scripts.ps1`: Substitutes empty files by batch files to the installation folder. Gets as input the path to your installation. E.g.:
`.\create_and_replace_scripts.ps1 -software_path "c:\Program Files\Deltares\Delft3D FM Suite 2025.02 HMWQ"`

------------------------------------------------------------------------