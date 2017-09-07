#!/bin/bash
#SBATCH -J mcPI
#SBATCH -o mcPI.out
#SBATCH -e mcPI.err
#SBATCH -N 1
#SBATCH -c 32
#SBATCH --exclusive
#SBATCH -t 0-00:40
#SBATCH -p hernquist
#SBATCH --mem=4000
#SBATCH --mail-user=pmocz@fas.harvard.edu
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL
 
source new-modules.sh
module purge
module load matlab
srun -n 1 -c 32 matlab-default -nojvm -nodisplay -nosplash -nodesktop -r "mcPI"

#EOF
