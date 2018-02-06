\name{meth}
\alias{meth}
\docType{data}
\title{
DNA methylation data
}
\description{
The data was produced with the use of either 450k or 850k
methylation arrays.
Preprocessing of raw IDAT files was made using minfi R/Bioconductor package
 version 1.19.16. Intensities were normalized using the functional
normalization algorithm. CpG sites containing SNPs inside the probe body 
were removed. Data is a subset of CpG sites present in 450k methylation arrays.
}
\author{Andreas Mock, Malgorzata Oles}
\examples{
library("SummarizedExperiment")
library("ExperimentHub")
eh = ExperimentHub()
meth = eh[["EH1071"]]
colData(meth)
assay(meth)[1:5,1:5]
head(rowData(meth))
}
\format{
\code{"\linkS4class{RangedSummarizedExperiment}"} object with Features 435155 and Samples 196.
}
\keyword{datasets}
