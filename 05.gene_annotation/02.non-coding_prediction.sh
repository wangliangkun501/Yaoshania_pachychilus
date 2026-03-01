## tRNA
tRNAscan-SE  -E  --thread 10  -o  tRNA.results  --gff  tRNA.gff3 -f  tRNA.structures \
-m tRNA.summary ../Yp.genome.fasta 1>tRNAscan-SE.log 2>&1

## rRNA
barrnap  --kingdom  euk --threads 40 --outseq  rRNA.fasta  ../Yp.genome.fasta 1>rRNA.gff  2>barrnap.log
blastn -query rRNA.fasta -db Rfam_rRNA -evalue 1e-5 -outfmt 6 -out blast.result -task megablast -num_threads 40

## other ncRNAs
cmscan --cut_ga --rfam --nohmmonly --cpu 40 -Z 451.3 --tblout genome_rfam.tblout \
--fmt 2 --clanin ./Rfam.clanin ./Rfam.cm ../Yp.genome.fasta > genome_rfam.cmscan 2>genome_rfam.cmscan.log
