#! /bin/bash
  
# Usage:
#   - Modify this script where needed (e.g. number of nodes, number of tasks per node).
#   - Execute this script from the command line of H7 using:
#     sbatch ./submit_native_h7.sh
#
# This is an h7 specific script for single or multi-node simulations

# Load modules.
#module purge
#module load intelmpi/2021.11.0   # Load the  message-passing library for parallel simulations.

# Set limits.
ulimit -s unlimited

# For h7 
export I_MPI_FABRICS=ofi
export FI_PROVIDER=tcp
export I_MPI_OFI_PROVIDER=tcp
export HDF5_USE_FILE_LOCKING=FALSE
# Set bash options. Exit on failures (and propagate errors in pipes).
set -eo pipefail


#--- Setup the path to the DIMRSet --------------------------------------------------------------------------
dimrFolder=/p/d-hydro/dimrset/2024/2024.03

#--- Setup the model ----------------------------------------------------------------------------------------
# DIMR input-file
export dimrFile=$1


# Replace number of processes in DIMR file
# You DO NOT need to modify the lines below.
PROCESSSTR="$(seq -s " " 0 $((SLURM_NTASKS-1)))"
sed -i "s/\(<process.*>\)[^<>]*\(<\/process.*\)/\1$PROCESSSTR\2/" $dimrFile

# Read MDU file from DIMR-file
export mduFile="$(sed -n 's/\r//; s/<inputFile>\(.*\).mdu<\/inputFile>/\1/p' $dimrFile)".mdu


#--- You do not need to modify the lines below -------------------------------------------------------------
# Set the library path to the `lib` folder in the dimrset
export LD_LIBRARY_PATH=$dimrFolder/lnx64/lib:$LD_LIBRARY_PATH


# Partition by calling dflowfm executable
if [ $SLURM_NTASKS -gt 1 ]; then 
    echo ""
    echo "Partitioning in folder ${PWD}"
    srun -n 1 -N 1 $dimrFolder/lnx64/bin/dflowfm --nodisplay --autostartstop --partition:ndomains=$SLURM_NTASKS:icgsolver=6 $mduFile 
else 
    #--- No partitioning ---
    echo ""
    echo "No partitioning..."
fi 
 
# Simulation by calling run_dimr.sh
echo ""
echo "Computing "
srun $dimrFolder/lnx64/bin/dimr "$dimrFile" -d 6
