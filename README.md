# River Educational Models -- Delft3D Flexible Mesh

This repository contains educational river models built with Delft3D
Flexible Mesh (D-HYDRO).\
Delft3D Flexible Mesh is developed by Deltares and is widely used for
river hydrodynamics and morphodynamics modelling.

These models are intended for learning, teaching, and experimentation
with river processes.

------------------------------------------------------------------------

# Repository Structure

This repository contains two important folders:

01_batch\
02_models

------------------------------------------------------------------------

## 01_batch -- PowerShell Scripts

This folder contains PowerShell (.ps1) scripts.

These scripts are utilities that:

-   Prepare model folders for execution\
-   Replace or standardize batch files\
-   Rename configuration files\
-   Maintain consistent folder structure\
-   Simplify execution workflows

In short:

> The scripts help manage and prepare the models for running in Delft3D
> Flexible Mesh.

They do not contain the models themselves --- only automation tools.

------------------------------------------------------------------------

## 02_models -- The Models

This folder contains the actual river educational models.

Each model is stored in its own subfolder.

Inside `02_models`, you will find a separate README file explaining:

-   What each model represents\
-   The learning objective\
-   Required input files\
-   Model setup details\
-   How to run the model

If you are interested in the modelling content itself, start in
`02_models`.

------------------------------------------------------------------------

# How to Run a PowerShell Script (Step-by-Step)

The following instructions assume you have never used PowerShell before.

------------------------------------------------------------------------

## Option 1 -- Open PowerShell Directly in the Folder (Easiest)

1.  Open **File Explorer**\

2.  Navigate to the folder `01_batch`\

3.  Click in the **address bar** at the top\

4.  Type:

    powershell

5.  Press **Enter**

A blue PowerShell window will open in that folder.

------------------------------------------------------------------------

## Option 2 -- Use the Windows Key and Navigate Manually

1.  Press the **Windows key** on your keyboard\

2.  Type:

    powershell

3.  Press **Enter**

A PowerShell window will open.

Now navigate to the folder:

1.  Type:

    cd
    "C:`\path`{=tex}`\to`{=tex}`\this`{=tex}`\repository`{=tex}\\01_batch"

2.  Press **Enter**

(Replace the path above with the actual path on your computer.)

------------------------------------------------------------------------

## Step 3 -- Allow Script Execution (First Time Only)

If PowerShell blocks the script, type:

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

Press **Enter**, then type:

Y

and press **Enter** again.

This change applies only to the current window.

------------------------------------------------------------------------

## Step 4 -- Run the Script

Type:

.`\script`{=tex}\_name.ps1

Replace `script_name.ps1` with the actual file name.

Example:

.`\replace`{=tex}\_rename_bat_xml.ps1

Then press **Enter**.

------------------------------------------------------------------------

## Optional: Run in Dry Mode (If Available)

Some scripts support a DryRun mode:

.`\replace`{=tex}\_rename_bat_xml.ps1 -DryRun

This shows what would happen without modifying files.

------------------------------------------------------------------------

# What These Scripts Do

The scripts are designed to:

-   Standardize model folder structure\
-   Replace legacy batch files\
-   Rename configuration files\
-   Ensure consistent execution setup\
-   Prepare models for Delft3D Flexible Mesh runs

They help keep the educational models clean and reproducible.

------------------------------------------------------------------------

# Where to Start

If you want to:

-   Explore the models → Go to `02_models`\
-   Prepare or clean model folders → Use scripts in `01_batch`\
-   Understand a specific model → Read the README inside `02_models`

------------------------------------------------------------------------

# Notes

-   The scripts do not modify system software.\
-   They only operate inside this repository.\
-   If unsure, use `-DryRun` first.
