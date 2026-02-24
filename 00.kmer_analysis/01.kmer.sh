ls /home/wangliangkun/sucker/sra/data/wgs_R*.fq.gz | awk '{print "gzip -dc "$0 }' > generate.file
jellyfish count -t 10 -C -m 21 -s 1G -g generate.file -G 2 -o Kmer_21
jellyfish histo -o Kmer_21.stat Kmer_21 -t 10 -h 10000000 -o Kmer_21.histo Kmer_21
