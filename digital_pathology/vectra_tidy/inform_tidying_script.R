## InForm Tidying Scripts ##


# Recursively Write CSV files #

# 'setwd()' to the directory with files for conversion
## Change wd
wd <- "D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX001"
setwd(wd)

# Create a new CSV export directory
dir.create("CSV/")

# Get list of files with certain suffix
filelist = list.files(pattern = "*cell_seg_data_summary.txt")

# Read the files in as delimited and export as csv using for loop
for (i in 1:length(filelist)){
  input <- filelist[i]
  output <- paste0(gsub("\\.txt$", "", input), ".csv")
  print(paste("Processing the file:", input))
  data = read.delim(input, header = TRUE)   
  setwd("CSV/")
  write.table(data, file = output, sep=",", col.names=TRUE, row.names=FALSE)
  setwd(wd)
}


# Combining CSV files into one/sample #

# 'setwd()' to the directory with files for conversion
wd <- "CSV/"
setwd(wd)

# Define the 'multMerge' function
multMerge = function(mypath){
  filenames = list.files(path = mypath, full.names = TRUE)
  datalist = lapply(filenames, 
                    function(x){read.csv(file = x,
                                         header = TRUE,
                                         stringsAsFactors = FALSE)})
  Reduce(function(x,y) {merge(x, y, all = TRUE)}, datalist)
}

# Run the 'multMerge' function in current WD
merge1 <- multMerge(getwd())

# Tidying up the columns 
del1 <- merge1[, -c(1, 5)]
del2 <- del1[, -c(5:143)]

# Create and export to the 'tidy' directory
## Name the 'write.csv' file as 'Sample_Total_Tidy.csv' format
dir.create("Tidy/")
setwd("Tidy/")

write.csv(del2, file = "LTX001_Total_Tidy.csv", row.names = F)


# Getting the total numbers of phenotype data per sample #

# Re-load the Sample_Total_Tidy.csv file
sum_base <- read.csv("LTX001_Total_Tidy.csv")

# Subsetting the total numbers for each ROI
sub_all <- sum_base[sum_base$Tissue.Category == "All", ]

# Subsetting for each different phenotype category
s_all <- sub_all[sub_all$Phenotype == "All", ]
s_ca9 <- sub_all[sub_all$Phenotype == "CA9+", ]
s_cd20 <- sub_all[sub_all$Phenotype == "CD20+", ]
s_cd3 <- sub_all[sub_all$Phenotype == "CD3+", ]
s_cd3cd4 <- sub_all[sub_all$Phenotype == "CD3+CD4+", ]
s_cd3cd4rorgt <- sub_all[sub_all$Phenotype == "CD3+CD4+RORgT+", ]
s_cd4 <- sub_all[sub_all$Phenotype == "CD4+", ]
s_macrophage <- sub_all[sub_all$Phenotype == "Macrophage+", ]
s_rorgt <- sub_all[sub_all$Phenotype == "RORgT+", ]
s_other <- sub_all[sub_all$Phenotype == "Other+", ]

# Calculating totals for each phenotype
all <- sum(s_all$Total.Cells)
ca9 <- sum(s_ca9$Total.Cells)
cd20 <- sum(s_cd20$Total.Cells)
cd3 <- sum(s_cd3$Total.Cells)
cd3cd4 <- sum(s_cd3cd4$Total.Cells)
cd3cd4rorgt <- sum(s_cd3cd4rorgt$Total.Cells)
cd4 <- sum(s_cd4$Total.Cells)
macrophage <- sum(s_macrophage$Total.Cells)
rorgt <- sum(s_rorgt$Total.Cells)
total_rorgt <- sum(cd3cd4rorgt, rorgt)
total_tcells <- sum(cd3, cd4, cd3cd4, cd3cd4rorgt)
total_tcells_nororgt <- sum(cd3, cd4, cd3cd4)
total_cd4s <- sum(cd4, cd3cd4, cd3cd4rorgt)
total_cd4s_nororgt <- sum(cd4, cd3cd4)
other <- sum(s_other$Total.Cells)

# Bind these into a table
Sample_Totals <- data.frame(Total_CD4 = total_cd4s, Total_CD4_No_RORgT = total_cd4s_nororgt, CD3 = cd3, 
                            CD4 = cd4, CD3CD4 = cd3cd4, Total_Tcells = total_tcells, Total_Tcells_No_RORgT = total_tcells_nororgt, 
                            Th17 = cd3cd4rorgt, RORgT = rorgt, Total_RORgT = total_rorgt, CD20 = cd20, Macrophage = macrophage, 
                            CA9 = ca9, Other = other, All = all)

# Export as a CSV to 'Tidy' directory
## Change the name to 'Sample_Phenotype_Totals.csv' format
write.csv(Sample_Totals, file = "LTX001_Phenotype_Totals.csv", row.names = F)

