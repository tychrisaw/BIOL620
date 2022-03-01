Author:  Whitmire, Date:  Mar 1, 2022:  To genetate box plots for raw microarray datasets

setwd("/Users/ty/Desktop/BIOL620/GDS223")
Library(affy)
eset<-ReadAffy()
eset_Norm<-rma(eset)
rma<-exprs(eset_Norm)

#Log base 2, or base 10, To perform log transformation do the following:
Treatment<- apply(rma[,c("GSM4843.CEL", "GSM4844.CEL")], 1, log)
Control<- apply(rma[,c("GSM4845.CEL", "GSM4846.CEL","GSM4847.CEL" )], 1, log)