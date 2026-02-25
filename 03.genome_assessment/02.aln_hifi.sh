minimap2 -t 40 -ax map-hifi --secondary=no ../../genome/Yp.genome.fasta ../../genome/tr/hifi.fastq | samtools sort - -o aln_hifi.bam
samtools flagstats aln_hifi.bam > hifi.stat
