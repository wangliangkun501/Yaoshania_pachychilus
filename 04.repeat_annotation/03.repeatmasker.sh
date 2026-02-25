RepeatMasker -e rmblast -pa 10 -gff -s -a -species Cypriniformes -dir rmout_sp ../data/genome.fasta >repeatmasker_sp.log 2>&1
RepeatMasker -e rmblast -pa 15 -gff -s -a -lib panda-families.fa -dir rmout_denovo rmout_sp/genome.fasta.masked
perl combineRMFiles.pl rmout_sp/genome.fasta rmout_denovo/genome.fasta.masked rmout_combine/genome
perl rmOutToGFF3.pl rmout_combine/genome.out > rmout_combine/genome.out.gff
