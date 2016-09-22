.PHONY: all fasta features test clean

all: clean fasta genome chr-count chr-size features gene-count verified-genes uncharacterized-genes gene-types palinsreg terminated-genes

clean:
	find . \( -name \*gene\* -o -name chr-\* \) -exec rm {} \;

fasta:

	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr01.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr02.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr03.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr04.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr05.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr06.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr07.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr08.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr09.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr10.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr11.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr12.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr13.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr14.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr15.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chr16.fsa
	wget -P fasta -nc http://downloads.yeastgenome.org/sequence/S288C_reference/chromosomes/fasta/chrmt.fsa


genome: fasta
	cat fasta/chr*.fsa > fasta/genome.fa

chr-count: genome
	grep '>' fasta/genome.fa | grep 'chromosome' | wc -l > chr-count

chr-size: genome
	grep -v '>' fasta/genome.fa | wc -m > chr-size

features:
	wget -nc http://downloads.yeastgenome.org/curation/chromosomal_feature/SGD_features.tab

gene-count: features
	cut -f 2 SGD_features.tab | grep 'ORF' | wc -l > gene-count

verified-genes: features
	 cut -f 3 SGD_features.tab | grep Verified | grep -v 'silence' | wc -l > verified-genes

uncharacterized-genes: features
	grep 'Uncharacterized' SGD_features.tab | wc -l > uncharacterized-genes

gene-types: features
	cut -f 3 SGD_features.tab | sort | uniq -c > gene-types

palinsreg:
	wget -nc ftp://ftp.imicrobe.us/abe487/yeast/palinsreg.txt

terminated-genes: palinsreg
	grep -o '/G=[^ ]*' palinsreg.txt | cut -d = -f 2- | sort | uniq > terminated-genes

test:
	./test.pl6
