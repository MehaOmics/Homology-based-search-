## Domain search pipeline using Pfam (HMMER)

## Step 1: Download Pfam-A HMM database
wget ftp://ftp.ebi.ac.uk/pub/databases/Pfam/current_release/Pfam-A.hmm.gz
gunzip Pfam-A.hmm.gz

## Step 2: Locate Pfam accession (example: PF01040)
grep -n "ACC PF01040" Pfam-A.hmm

# Step 3: Extract the specific HMM model (UbiA here)
hmmfetch -o UbiA.hmm Pfam-A.hmm PF01040.23

# Step 4: Prepare HMM for search
hmmpress UbiA.hmm

# Step 5: Search your protein set with HMMER
hmmscan --cpu 10 --domtblout ubiA_hits.out UbiA.hmm transdecoder.pep > ubiA.log

