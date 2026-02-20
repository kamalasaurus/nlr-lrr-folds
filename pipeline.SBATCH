#!/bin/bash

#SBATCH --job-name=fls2-flg22-pipeline
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=32
#SBATCH --time=20:00:00
#SBATCH --mem=100GB
#SBATCH --account=torch_pr_121_general

# removed preemption line

if [[ -e done.txt ]]; then exit; fi

#data_json="/scratch/kr3059/fls2-flg22-analysis/output/**/*_data.json"

/share/apps/af3/3.0.1/run-af3-pipeline.bash \
--json_path=/scratch/kr3059/fls2-flg22-analysis/interactions_unique_server.json \
--output_dir=/scratch/kr3059/fls2-flg22-analysis/output_unique \
--run_data_pipeline=true \
--run_inference=false && touch done.txt

