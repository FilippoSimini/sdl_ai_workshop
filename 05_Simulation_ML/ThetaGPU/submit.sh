#!/bin/bash
#COBALT -n 1
#COBALT -t 00:10:00
#COBALT -q full-node
#COBALT -A datascience

CONTAINER=/lus/theta-fs0/projects/datascience/thetaGPU/containers/tf2_20.08-py3.sif
SCRIPT=/home/rmaulik/sdl_ai_workshop/05_Simulation_ML/ThetaGPU/queue_submission.sh

echo "Running Cobalt Job $COBALT_JOBID."
mpirun -n 1 -npernode 1 -hostfile $COBALT_NODEFILE singularity run --nv -B /lus:/lus $CONTAINER $SCRIPT

