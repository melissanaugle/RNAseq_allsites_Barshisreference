
#read in file with DGE contigs 
DGE <- read.delim("corals_DGE_contigs.txt", header = F)
#read in file with all contigs from transciptome
allcontigs <- read.delim("Hyacinthus_genes_allcontigs.txt", header = F)

head(DGE)
head(allcontigs)

#4806 contigs
nrow(DGE)
#28437 contigs
nrow(allcontigs)

#if DGE then signif
DGE$signif <- '1'

head(DGE)
head(allcontigs)

contigs_and_signif <- merge(DGE, allcontigs, all = T)
head(contigs_and_signif)
#28642 
nrow(contigs_and_signif)

contigs_and_signif[is.na(contigs_and_signif)] <- 0

head(contigs_and_signif)
write.table(contigs_and_signif, "contigs_signif_file_GOMWU.txt", row.names = F)
