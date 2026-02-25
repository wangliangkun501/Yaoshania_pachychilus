/opt/anaconda3/bin/bwa index -p genome ../../genome/Yp.genome.fasta
/opt/anaconda3/bin/bwa mem -t 40 genome ../../BGI/result_dir/01.survey/01.rawdata/raw_R1.fq.gz ../../BGI/result_dir/01.survey/01.rawdata/raw_R2.fq.gz | samtools sort - -o aln_short.bam
samtools flagstats aln_short.bam > short.stat
