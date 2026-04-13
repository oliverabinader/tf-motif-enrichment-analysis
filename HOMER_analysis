1. Overview
This script prepares input gene lists for HOMER motif enrichment analysis using differentially expressed genes (DEGs) from RNA-seq analysis.

Workflow:
- Read DEGs from TSV files.
- Extract gene IDs (first column).
- Write gene IDs to plain text files (one per line) for HOMER.

2. Prepare Upregulated Genes
# Read upregulated DEGs
up_data <- read_tsv(
  "/path/to/DEGs_upregulated_2FC_FDR_less_than_0.05.tsv",
  col_names = TRUE,
  quote = ""
)
up_data <- as.data.frame(up_data)
# Extract the first column (gene IDs) and write to HOMER input file
write.table(
  up_data[,1],
  file = "HOMER_input_data/DE_up_geneIDs_2FC_FDR_less_than_0.05.txt",
  row.names = FALSE,
  col.names = FALSE,
  quote = FALSE
)

3. Prepare Downregulated Genes
# Read downregulated DEGs
dn_data <- read_tsv(
  "/path/to/DEGs_downregulated_2FC_FDR_less_than_0.05.tsv",
  col_names = TRUE,
  quote = ""
)
dn_data <- as.data.frame(dn_data)
# Extract the first column (gene IDs) and write to HOMER input file
write.table(
  dn_data[,1],
  file = "HOMER_input_data/DE_dn_geneIDs_2FC_FDR_less_than_0.05.txt",
  row.names = FALSE,
  col.names = FALSE,
  quote = FALSE
)

4. HOMER Analysis
Input files: Only the list of gene IDs is required.
Running HOMER: Example command for upregulated genes:
findMotifs.pl \
  /path/to/DE_up_geneIDs_2FC_FDR_less_than_0.05.txt \
  human \
  /path/to/homer_up_reg_output/ \
  -len 8,10 \
  -p 4
  
len 8,10: motifs of length 8 and 10 bp
p 4: use 4 CPU threads

Results can be explored in knownResults.html.
Significance is assessed using q-values (Benjamini-corrected).
