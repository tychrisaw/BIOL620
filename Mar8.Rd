Author:  Whitmire, Date:  Mar 8, 2022:  To genetate box plots for raw microarray datasets

setwd("/Users/ty/Desktop/BIOL620/GDS223")
Library(affy)
eset<-ReadAffy()
eset_Norm<-rma(eset)
rma<-exprs(eset_Norm)

#Log base 2, or base 10, To perform log transformation do the following:
Treatment<- apply(rma[,c("GSM4843.CEL", "GSM4844.CEL")], 1, log)
Control<- apply(rma[,c("GSM4845.CEL", "GSM4846.CEL","GSM4847.CEL" )], 1, log)
#TRANSPOSE:  Switch columns to rows and rows to columns
#Perform transpose so that the samples are your columns and genes are your rows!
Treatment_T<-t(Treatment)
Control_T<-t(Control)
#To make fold changes, we first need to take mean/average for treatment and for control samples
Treatment_T_Mean<-rowMeans(Treatment_T)
Control_T_Mean<-rowMeans(Control_T)
#Get the subtraction fold change for treatment over control
Fold_Change<-Treatment_T_Mean-Control_T_Mean
#Assignment:  Export variable "Fold_Change" as a .csv format file with name "fold_changes.csv"