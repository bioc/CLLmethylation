# read .IDAT files
library(minfi)

baseDir = "RawData/arrays/"
targets = read.metharray.sheet(baseDir)
RGSet = read.metharray.exp(targets = targets)

# normalization
meth = preprocessFunnorm(RGSet)

# remove probes with SNPs
meth = addSnpInfo(meth)
meth = dropLociWithSnps(meth, snps=c("SBE","CpG"), maf=0)
