singularity exec /home/wangliangkun/software/container/TETools202309.sif BuildDatabase -name panda ../data/genome.fasta
singularity exec /home/wangliangkun/software/container/TETools202309.sif RepeatModeler -database panda -threads 40 -LTRStruct 1>repeatmodeler.log 2>&1
