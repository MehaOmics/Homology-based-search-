## Step 1: Make database
makeblastdb -in query.fasta -dbtype prot -out mydb
##dbtype for nucleotide: nucl

## Step 2: different BLAST depending upon query and database type

##blastn (nucleotide vs nucleotide)
blastn -query nucleotide_query.fasta -db nucleotide_db -num_threads 10 -outfmt 6 > blastn_output.outfmt6

##blastp (protein vs protein)
blastp -query protein_query.fasta -db protein_db -num_threads 10 -outfmt 6 > blastp_output.outfmt6

##blastx (translated nucleotide vs Protein database)
blastx -query nucleotide_query.fasta -db protein_db -num_threads 10 -outfmt 6 > blastx_output.outfmt6

##tblastn (protein query vs translated nucleotide database)
tblastn -query protein_query.fasta  -db nucleotide_db  -num_threads 10 -outfmt 6 > output.outfmt6



