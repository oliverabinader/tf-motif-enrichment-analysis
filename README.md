Transcription Factor and Motif Enrichment 
-----------------------------------------
Analysis Overview:
This repository contains example workflows for performing transcription factor enrichment analysis and motif enrichment analysis following differential gene expression analysis from RNA-seq experiments.
The analyses presented here focus on identifying potential regulatory mechanisms underlying sets of upregulated and downregulated genes.

Two complementary approaches are demonstrated:
Transcription factor enrichment using Enrichr
Motif enrichment using HOMER

These analyses help infer transcription factors that may regulate the observed gene expression patterns.

General workflow
----------------
Typical workflow after differential expression analysis:
1) Obtain a table of differentially expressed genes (DEGs) from RNA-seq analysis.
2) Filter genes using significance thresholds such as:
	Adjusted p-value (FDR / padj) < 0.05
	|log2FoldChange| ≥ 1
3) Split genes into two groups:
	Upregulated genes
	Downregulated genes
4) Perform enrichment analysis separately for each group.
