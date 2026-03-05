library(enrichR)

# List Enrichr databases
a <- listEnrichrDbs()
result <- a$libraryName[grep("chea|encode", a$libraryName, ignore.case = TRUE)]

dbs <- c("ENCODE_and_ChEA_Consensus_TFs_from_ChIP-X")

# Load differential expression results
data1 <- read_excel("path/file")
#data1 <- as.data.frame(data1)
#also check for N/A values in the dataset

# Filter upregulated genes
deg_up <- data1[ data1$log2FoldChange >= 1 & data1$padj < 0.05, ]
# Filter downregulated genes
deg_down <- data1[ data1$log2FoldChange <= -1 & data1$padj < 0.05, ]

# Run Enrichr
enriched_up <- enrichr(unique(deg_up$gene), dbs)
enriched_down <- enrichr(unique(deg_down$gene), dbs)

# Export results
write.table(
  enriched_up[["ENCODE_and_ChEA_Consensus_TFs_from_ChIP-X"]][
    c("Term","P.value","Adjusted.P.value","Combined.Score","Genes")
  ],
  file="path/enrichR_upterms.txt",
  sep=",",
  row.names=FALSE,
  quote=FALSE
)

write.table(
  enriched_down[["ENCODE_and_ChEA_Consensus_TFs_from_ChIP-X"]][
    c("Term","P.value","Adjusted.P.value","Combined.Score","Genes")
  ],
  file="path/enrichR_downterms.txt",
  sep=",",
  row.names=FALSE,
  quote=FALSE
)

#Significance is typically evaluated using q-values (Benjamini-corrected p-values).
