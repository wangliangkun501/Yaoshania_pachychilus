/home/wangliangkun/software/assembly/HapHiC/utils/filter_bam hic_raw.bam 1 --nm 3 --threads 64 | samtools view - -b -@ 64 -o hic_filtered.bam
