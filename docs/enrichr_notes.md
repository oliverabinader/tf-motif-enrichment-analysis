Transcription Factor Enrichment (Enrichr)
-----------------------------------------
Enrichr is used to identify transcription factors whose known targets overlap with the input gene lists.
Several transcription factor libraries/dbs within Enrichr rely on public datasets such as:
ChIP-seq
ChIP-PET
other curated TF–target interaction datasets.
Libraries such as ChEA and ENCODE aggregate transcription factor binding information derived from these experiments.
These databases allow testing whether genes identified in RNA-seq differential expression analysis are enriched among known transcription factor targets.
In practical terms, this means evaluating whether genes in the DEG list appear among targets identified in ChIP-based TF binding datasets.

Important notes about Enrichr databases
---------------------------------------
When using the Enrichr transcription factor databases:
1) Some libraries combine information across multiple organisms.
2) Certain consensus libraries (such as ENCODE/ChEA consensus datasets) may not explicitly display organism information for each transcription factor.
3) Other individual databases may contain transcription factor names along with species annotations.

References
----------
- Enrichr methodology paper: https://bmcbioinformatics.biomedcentral.com/articles/10.1186/1471-2105-14-128
- Enrichr enrichment analysis tutorial: https://ycl6.github.io/GO-Enrichment-Analysis-Demo/4_enrichR.html
