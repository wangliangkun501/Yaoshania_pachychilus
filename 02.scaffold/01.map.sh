#!/bin/bash
R1=/home/wangliangkun/sucker/sra/data/hic_r1.fq.gz
R2=/home/wangliangkun/sucker/sra/data/hic_r2.fq.gz
threads=64

/opt/anaconda3/bin/bwa index panda.fasta
/opt/anaconda3/bin/bwa mem -5SP -t $threads panda.fasta $R1 $R2 | /home/wangliangkun/software/tools/samblaster/samblaster | /opt/anaconda3/bin/samtools view - -@ $threads -S -h -b -F 3340 -o hic_raw.bam
