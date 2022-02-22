#Author:  Whitmire, Date:  Feb 15, 2022, Purpose:  To perform microarray normalization

#Set the working directory to your .Cel folder
setwd("/Users/ty/Desktop/BIOL620/GDS223")

#Load package affy
library(affy)

#Reading the .Cel files
eset <- ReadAffy()
