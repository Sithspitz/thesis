####################### Collation Script CD4_Total ########################################
### This script will collate all examples of a particular phenotype across all sections. ##
## Originally designed for data from the 'Full Phenotyping' InForm run ####################
# If script below is hashtagged then redundent here, e.g. no total_tumour data ############
###########################################################################################

# Create 'Doubles' (numerics) for each section with said phenotype export
## Need to change the ROI_total$ and ROI_prev$ with each different collation script
### Need to change the directory SAMPLE/... if a different feature is being examined

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX022/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX022_ROI_Totals.csv")
ROI_prev <- read.csv("LTX022_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX022 <- cbind(counts, prev)
row.names(LTX022) <- "LTX022"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX030/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX030_ROI_Totals.csv")
ROI_prev <- read.csv("LTX030_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX030 <- cbind(counts, prev)
row.names(LTX030) <- "LTX030"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX092/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX092_ROI_Totals.csv")
ROI_prev <- read.csv("LTX092_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX092 <- cbind(counts, prev)
row.names(LTX092) <- "LTX092"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX097/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX097_ROI_Totals.csv")
ROI_prev <- read.csv("LTX097_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX097 <- cbind(counts, prev)
row.names(LTX097) <- "LTX097"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX107/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX107_ROI_Totals.csv")
ROI_prev <- read.csv("LTX107_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX107 <- cbind(counts, prev)
row.names(LTX107) <- "LTX107"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX156/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX156_ROI_Totals.csv")
ROI_prev <- read.csv("LTX156_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX156 <- cbind(counts, prev)
row.names(LTX156) <- "LTX156"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX080/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX080_ROI_Totals.csv")
ROI_prev <- read.csv("LTX080_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX080 <- cbind(counts, prev)
row.names(LTX080) <- "LTX080"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX043/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX043_ROI_Totals.csv")
ROI_prev <- read.csv("LTX043_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX043 <- cbind(counts, prev)
row.names(LTX043) <- "LTX043"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX058/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX058_ROI_Totals.csv")
ROI_prev <- read.csv("LTX058_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX058 <- cbind(counts, prev)
row.names(LTX058) <- "LTX058"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX108/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX108_ROI_Totals.csv")
ROI_prev <- read.csv("LTX108_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX108 <- cbind(counts, prev)
row.names(LTX108) <- "LTX108"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX137/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX137_ROI_Totals.csv")
ROI_prev <- read.csv("LTX137_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX137 <- cbind(counts, prev)
row.names(LTX137) <- "LTX137"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX166/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX166_ROI_Totals.csv")
ROI_prev <- read.csv("LTX166_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX166 <- cbind(counts, prev)
row.names(LTX166) <- "LTX166"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX206/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX206_ROI_Totals.csv")
ROI_prev <- read.csv("LTX206_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX206 <- cbind(counts, prev)
row.names(LTX206) <- "LTX206"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX115/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX115_ROI_Totals.csv")
ROI_prev <- read.csv("LTX115_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX115 <- cbind(counts, prev)
row.names(LTX115) <- "LTX115"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX001/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX001_ROI_Totals.csv")
ROI_prev <- read.csv("LTX001_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX001 <- cbind(counts, prev)
row.names(LTX001) <- "LTX001"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX091/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX091_ROI_Totals.csv")
ROI_prev <- read.csv("LTX091_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX091 <- cbind(counts, prev)
row.names(LTX091) <- "LTX091"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX100/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX100_ROI_Totals.csv")
ROI_prev <- read.csv("LTX100_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX100 <- cbind(counts, prev)
row.names(LTX100) <- "LTX100"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX145/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX145_ROI_Totals.csv")
ROI_prev <- read.csv("LTX145_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX145 <- cbind(counts, prev)
row.names(LTX145) <- "LTX145"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX201/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX201_ROI_Totals.csv")
ROI_prev <- read.csv("LTX201_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX201 <- cbind(counts, prev)
row.names(LTX201) <- "LTX201"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX136/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX136_ROI_Totals.csv")
ROI_prev <- read.csv("LTX136_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX136 <- cbind(counts, prev)
row.names(LTX136) <- "LTX136"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX109/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX109_ROI_Totals.csv")
ROI_prev <- read.csv("LTX109_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX109 <- cbind(counts, prev)
row.names(LTX109) <- "LTX109"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX164/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX164_ROI_Totals.csv")
ROI_prev <- read.csv("LTX164_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX164 <- cbind(counts, prev)
row.names(LTX164) <- "LTX164"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX210/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX210_ROI_Totals.csv")
ROI_prev <- read.csv("LTX210_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX210 <- cbind(counts, prev)
row.names(LTX210) <- "LTX210"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX036/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("LTX036_ROI_Totals.csv")
ROI_prev <- read.csv("LTX036_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
LTX036 <- cbind(counts, prev)
row.names(LTX036) <- "LTX036"

#setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S349117/CSV_total_tumour/Tidy/")
#ROI_total <- read.csv("S349117_ROI_Totals.csv")
#ROI_prev <- read.csv("S349117_ROI_Prevalence.csv")
#counts <- t(data.frame(ROI_total$CD4))
#prev <- t(data.frame(ROI_prev$CD4_per10k))
#S349117 <- cbind(counts, prev)
#row.names(S349117) <- "S349117"

#setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S349126/CSV_total_tumour/Tidy/")
#ROI_total <- read.csv("S349126_ROI_Totals.csv")
#ROI_prev <- read.csv("S349126_ROI_Prevalence.csv")
#counts <- t(data.frame(ROI_total$CD4))
#prev <- t(data.frame(ROI_prev$CD4_per10k))
#S349126 <- cbind(counts, prev)
#row.names(S349126) <- "S349126"

#setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S390425/CSV_total_tumour/Tidy/")
#ROI_total <- read.csv("S390425_ROI_Totals.csv")
#ROI_prev <- read.csv("S390425_ROI_Prevalence.csv")
#counts <- t(data.frame(ROI_total$CD4))
#prev <- t(data.frame(ROI_prev$CD4_per10k))
#S390425 <- cbind(counts, prev)
#row.names(S390425) <- "S390425"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S390417/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("S390417_ROI_Totals.csv")
ROI_prev <- read.csv("S390417_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
S390417 <- cbind(counts, prev)
row.names(S390417) <- "S390417"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S390277/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("S390277_ROI_Totals.csv")
ROI_prev <- read.csv("S390277_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
S390277 <- cbind(counts, prev)
row.names(S390277) <- "S390277"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S390307/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("S390307_ROI_Totals.csv")
ROI_prev <- read.csv("S390307_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
S390307 <- cbind(counts, prev)
row.names(S390307) <- "S390307"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S390436/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("S390436_ROI_Totals.csv")
ROI_prev <- read.csv("S390436_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
S390436 <- cbind(counts, prev)
row.names(S390436) <- "S390436"

#setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S390333/CSV_total_tumour/Tidy/")
#ROI_total <- read.csv("S390333_ROI_Totals.csv")
#ROI_prev <- read.csv("S390333_ROI_Prevalence.csv")
#counts <- t(data.frame(ROI_total$CD4))
#prev <- t(data.frame(ROI_prev$CD4_per10k))
#S390333 <- cbind(counts, prev)
#row.names(S390333) <- "S390333"

#setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S349120/CSV_total_tumour/Tidy/")
#ROI_total <- read.csv("S349120_ROI_Totals.csv")
#ROI_prev <- read.csv("S349120_ROI_Prevalence.csv")
#counts <- t(data.frame(ROI_total$CD4))
#prev <- t(data.frame(ROI_prev$CD4_per10k))
#S349120 <- cbind(counts, prev)
#row.names(S349120) <- "S349120"

#setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S349123/CSV_total_tumour/Tidy/")
#ROI_total <- read.csv("S349123_ROI_Totals.csv")
#ROI_prev <- read.csv("S349123_ROI_Prevalence.csv")
#counts <- t(data.frame(ROI_total$CD4))
#prev <- t(data.frame(ROI_prev$CD4_per10k))
#S349123 <- cbind(counts, prev)
#row.names(S349123) <- "S349123"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S390321/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("S390321_ROI_Totals.csv")
ROI_prev <- read.csv("S390321_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
S390321 <- cbind(counts, prev)
row.names(S390321) <- "S390321"

#setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S349102/CSV_total_tumour/Tidy/")
#ROI_total <- read.csv("S349102_ROI_Totals.csv")
#ROI_prev <- read.csv("S349102_ROI_Prevalence.csv")
#counts <- t(data.frame(ROI_total$CD4))
#prev <- t(data.frame(ROI_prev$CD4_per10k))
#S349102 <- cbind(counts, prev)
#row.names(S349102) <- "S349102"

#setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S349105/CSV_total_tumour/Tidy/")
#ROI_total <- read.csv("S349105_ROI_Totals.csv")
#ROI_prev <- read.csv("S349105_ROI_Prevalence.csv")
#counts <- t(data.frame(ROI_total$CD4))
#prev <- t(data.frame(ROI_prev$CD4_per10k))
#S349105 <- cbind(counts, prev)
#row.names(S349105) <- "S349105"

#setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S349114/CSV_total_tumour/Tidy/")
#ROI_total <- read.csv("S349114_ROI_Totals.csv")
#ROI_prev <- read.csv("S349114_ROI_Prevalence.csv")
#counts <- t(data.frame(ROI_total$CD4))
#prev <- t(data.frame(ROI_prev$CD4_per10k))
#S349114 <- cbind(counts, prev)
#row.names(S349114) <- "S349114"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S390358/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("S390358_ROI_Totals.csv")
ROI_prev <- read.csv("S390358_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
S390358 <- cbind(counts, prev)
row.names(S390358) <- "S390358"

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/S390372/CSV_total_tumour/Tidy/")
ROI_total <- read.csv("S390372_ROI_Totals.csv")
ROI_prev <- read.csv("S390372_ROI_Prevalence.csv")
counts <- t(data.frame(ROI_total$CD4))
prev <- t(data.frame(ROI_prev$CD4_per10k))
S390372 <- cbind(counts, prev)
row.names(S390372) <- "S390372"

# Collate into a df and export
## Change the rbind to df adding/removing samples that have been used in the scripts directly above

df <- rbind(LTX022, LTX030, LTX092, LTX097, LTX107, LTX156, LTX080, LTX043, LTX058, LTX108, LTX137, LTX166, LTX206, LTX115,
            LTX001, LTX091, LTX100, LTX145, LTX201, LTX136, LTX109, LTX164, LTX210, LTX036, S390417, S390277, S390307, S390436,
            S390321, S390358, S390372)
colnames(df) <- c("Count_Total", "Count_Tumour", "Count_Stroma", "Count_Lymphoid_Aggregates", "Count_White_Space",
                  "Per10k_Total", "Per10k_Tumour", "Per10k_Stroma", "Per10k_Lymphoid_Aggregates", "Per10k_White_Space")

setwd("D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/Collated_Data/Total_Tumour/")
write.csv(df, file = "CD4_Collation.csv", row.names = T)

