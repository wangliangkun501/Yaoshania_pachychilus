## transcriptome evidence
for i in data/*_R1.fq.gz; do
    sample=$(basename "$i" _R1.fq.gz)
    hisat2 --new-summary --summary-file ${sample}.hisat.summary --threads 40 -x ref \
    -1 data/${sample}_R1.fq.gz -2 data/${sample}_R2.fq.gz \
    | samtools sort -@ 5 -o ${sample}.bam - 1>${sample}.log 2>${sample}.err
done
samtools merge -@ 5 -o rna_merged.bam fish1.bam fish2.bam fish3.bam fish4.bam fish5.bam

## protein evidence
cat D.rerio.pep.fasta O.latipes.pep.fasta A.mexicanus.pep.fasta T.rosa.pep.fasta B.kweichowensis.pep.fasta B.pingi.pep.fasta > pep.fasta

## braker.sh
perl braker.pl --genome=./genome.fasta --species=yaoshan --prot_seq=./pep.fasta --bam=./rna_merged.bam --threads 40 --workingdir=./output --nocleanup --gff3
