## tRNA
tRNAscan-SE  -E  --thread 10  -o  tRNA.results  --gff  tRNA.gff3 -f  tRNA.structures \
-m tRNA.summary ../Yp.genome.fasta 1>tRNAscan-SE.log 2>&1

## rRNA


## other ncRNAs
cmscan --cut_ga --rfam --nohmmonly --cpu 40 -Z 451.3 --tblout genome_rfam.tblout \
--fmt 2 --clanin ./Rfam.clanin ./Rfam.cm ../Yp.genome.fasta > genome_rfam.cmscan 2>genome_rfam.cmscan.log
