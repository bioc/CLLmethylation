# meth
meta = data.frame(
  Title = "DNA methylation data of CLL primary samples",
  Description = paste0("The data was produced with the use of 450k and ",
"850k methylation arrays. Preprocessing of raw IDAT files was made using ",
"minfi R/Bioconductor package version 1.19.16. Intensities were normalized ",
"using the functional normalization algorithm. CpG sites containing SNPs ",
"inside the probe body were removed. Data is a subset of CpG sites present",
"in 450k methylation arrays."),
  BiocVersion = "3.7",
  Genome = "hg19",
  SourceType = "IDAT",
  SourceUrl = "https://wwwdev.ebi.ac.uk/ega/datasets/EGAD00010000948",
  SourceVersion = "2018-01-27",
  Species = "Homo sapiens",
  TaxonomyId = 9606,
  Coordinate_1_based = FALSE,
  DataProvider = "European Molecular Biology Laboratory",
  Maintainer = "Andreas Mock <andreas.mock@embl.de>, Malgorzata Oles <malgorzata.oles@embl.de>",
  RDataClass = "RangedSummarizedExperiment",
  DispatchClass = "Rda",
  RDataPath = "CLLmethylation/meth.Rda"
)

write.csv(meta, file="metadata.csv", row.names=FALSE)
