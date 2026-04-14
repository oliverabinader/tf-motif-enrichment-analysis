Motif Enrichment Analysis (HOMER)
---------------------------------
Motif enrichment analysis identifies DNA sequence motifs that are over-represented in regulatory regions of a given gene set.
HOMER's findMotifs.pl script analyzes promoter regions of genes to detect enriched transcription factor binding motifs.
The algorithm compares motif occurrence in promoters of target genes against a background set of promoters.
Motifs significantly enriched in the target gene promoters may indicate candidate transcription factors involved in gene regulation.

Input Preparation for HOMER
---------------------------
Before running HOMER, the differential expression table is preprocessed to generate two gene lists:
up_reg_genes.txt
down_reg_genes.txt
These lists are then used as input for: findMotifs.pl for promoter motif enrichment analysis.

References
----------
- HOMER installation documentation: http://homer.ucsd.edu/homer/introduction/install.html
- HOMER motif analysis documentation: http://homer.ucsd.edu/homer/microarray/index.html
