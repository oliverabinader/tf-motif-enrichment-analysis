**Transcription Factor and Motif Enrichment Analysis**

**Overview**

This repository provides example workflows for performing transcription factor (TF) enrichment analysis and motif enrichment analysis following differential gene expression (DGE) analysis from RNA-seq experiments.

The analyses aim to identify potential regulatory mechanisms underlying sets of upregulated and downregulated genes, helping infer transcription factors that may drive the observed gene expression patterns.

Two complementary approaches are demonstrated
=============================================
- Transcription Factor Enrichment using Enrichr
- Motif Enrichment using HOMER

**Workflow**

The typical workflow after performing differential expression analysis is as follows:

- Generate a table of DEGs from your RNA-seq data.
- Filter Genes
- Apply significance thresholds, for example:
	Adjusted p-value (FDR / padj) < 0.05 & |log2FoldChange| ≥ 1
- Split Genes into Groups
- Separate the filtered genes into:
	- Upregulated genes
	- Downregulated genes
- Conduct enrichment analysis separately for upregulated and downregulated gene sets:
	- TF Enrichment: Identify transcription factors likely regulating each gene set using Enrichr.
	- Motif Enrichment: Identify enriched DNA sequence motifs in gene promoters using HOMER.

**Goals**

By following this workflow, you can:
- Discover key transcription factors driving gene expression changes.
- Identify DNA motifs that may serve as regulatory elements.
- Gain insight into the regulatory networks underlying your RNA-seq data.
