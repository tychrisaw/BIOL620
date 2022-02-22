#Author:  Whitmire, Date:  Feb 22, 2022: Purpose:  To generate box plots for raw microa~/Desktop/Feb22.Rdrray data sets
setwd("/Users/ty/Desktop/BIOL620/GDS223")
library (affy)
# Box plots for raw datasets
boxplot(est)
# Perform RMA normalization
eset_Norm<- rma(eset)
# Box plots for normalized datasets
rma <- exprs(eset_Norm)
boxplot(rma)