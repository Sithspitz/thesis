## InForm Tidying Script For Spatial Phenotyping ##
# This script was created using LTX001 but should be changed for each tumour


# Summary of subsets numbers by Tissue Category #

library(ggplot2)
library(scales)
wd <- "D:/COVID19/Vectra Analysis SEE LAPTOP HDD COPY/Batch Analysis Results/Full Phenotyping Export/LTX001/CSV/Tidy/"
setwd(wd)
total <- read.csv("LTX001_Total_Tidy.csv")

# Subsetting the total numbers by ROI
sub_all <- total[total$Tissue.Category == "All", ]
sub_lymphocyte_agg <- total[total$Tissue.Category == "Lymphoid Aggregates", ]
sub_stroma <- total[total$Tissue.Category == "Stroma", ]
sub_tumour1 <- total[total$Tissue.Category == "Tumour 1", ]
sub_tumour2 <- total[total$Tissue.Category == "Tumour 2", ]
sub_white <- total[total$Tissue.Category == "White Space", ]

# Subsetting for each different phenotype category
s_all_all <- sub_all[sub_all$Phenotype == "All", ]
s_all_ca9 <- sub_all[sub_all$Phenotype == "CA9+", ]
s_all_cd20 <- sub_all[sub_all$Phenotype == "CD20+", ]
s_all_cd3 <- sub_all[sub_all$Phenotype == "CD3+", ]
s_all_cd3cd4 <- sub_all[sub_all$Phenotype == "CD3+CD4+", ]
s_all_cd3cd4rorgt <- sub_all[sub_all$Phenotype == "CD3+CD4+RORgT+", ]
s_all_cd4 <- sub_all[sub_all$Phenotype == "CD4+", ]
s_all_macrophage <- sub_all[sub_all$Phenotype == "Macrophage+", ]
s_all_rorgt <- sub_all[sub_all$Phenotype == "RORgT+", ]
s_all_other <- sub_all[sub_all$Phenotype == "Other+", ]

s_lympho_all <- sub_lymphocyte_agg[sub_lymphocyte_agg$Phenotype == "All", ]
s_lympho_ca9 <- sub_lymphocyte_agg[sub_lymphocyte_agg$Phenotype == "CA9+", ]
s_lympho_cd20 <- sub_lymphocyte_agg[sub_lymphocyte_agg$Phenotype == "CD20+", ]
s_lympho_cd3 <- sub_lymphocyte_agg[sub_lymphocyte_agg$Phenotype == "CD3+", ]
s_lympho_cd3cd4 <- sub_lymphocyte_agg[sub_lymphocyte_agg$Phenotype == "CD3+CD4+", ]
s_lympho_cd3cd4rorgt <- sub_lymphocyte_agg[sub_lymphocyte_agg$Phenotype == "CD3+CD4+RORgT+", ]
s_lympho_cd4 <- sub_lymphocyte_agg[sub_lymphocyte_agg$Phenotype == "CD4+", ]
s_lympho_macrophage <- sub_lymphocyte_agg[sub_lymphocyte_agg$Phenotype == "Macrophage+", ]
s_lympho_rorgt <- sub_lymphocyte_agg[sub_lymphocyte_agg$Phenotype == "RORgT+", ]
s_lympho_other <- sub_lymphocyte_agg[sub_lymphocyte_agg$Phenotype == "Other+", ]

s_stroma_all <- sub_stroma[sub_stroma$Phenotype == "All", ]
s_stroma_ca9 <- sub_stroma[sub_stroma$Phenotype == "CA9+", ]
s_stroma_cd20 <- sub_stroma[sub_stroma$Phenotype == "CD20+", ]
s_stroma_cd3 <- sub_stroma[sub_stroma$Phenotype == "CD3+", ]
s_stroma_cd3cd4 <- sub_stroma[sub_stroma$Phenotype == "CD3+CD4+", ]
s_stroma_cd3cd4rorgt <- sub_stroma[sub_stroma$Phenotype == "CD3+CD4+RORgT+", ]
s_stroma_cd4 <- sub_stroma[sub_stroma$Phenotype == "CD4+", ]
s_stroma_macrophage <- sub_stroma[sub_stroma$Phenotype == "Macrophage+", ]
s_stroma_rorgt <- sub_stroma[sub_stroma$Phenotype == "RORgT+", ]
s_stroma_other <- sub_stroma[sub_stroma$Phenotype == "Other+", ]

s_tumour1_all <- sub_tumour1[sub_tumour1$Phenotype == "All", ]
s_tumour1_ca9 <- sub_tumour1[sub_tumour1$Phenotype == "CA9+", ]
s_tumour1_cd20 <- sub_tumour1[sub_tumour1$Phenotype == "CD20+", ]
s_tumour1_cd3 <- sub_tumour1[sub_tumour1$Phenotype == "CD3+", ]
s_tumour1_cd3cd4 <- sub_tumour1[sub_tumour1$Phenotype == "CD3+CD4+", ]
s_tumour1_cd3cd4rorgt <- sub_tumour1[sub_tumour1$Phenotype == "CD3+CD4+RORgT+", ]
s_tumour1_cd4 <- sub_tumour1[sub_tumour1$Phenotype == "CD4+", ]
s_tumour1_macrophage <- sub_tumour1[sub_tumour1$Phenotype == "Macrophage+", ]
s_tumour1_rorgt <- sub_tumour1[sub_tumour1$Phenotype == "RORgT+", ]
s_tumour1_other <- sub_tumour1[sub_tumour1$Phenotype == "Other+", ]

s_tumour2_all <- sub_tumour2[sub_tumour2$Phenotype == "All", ]
s_tumour2_ca9 <- sub_tumour2[sub_tumour2$Phenotype == "CA9+", ]
s_tumour2_cd20 <- sub_tumour2[sub_tumour2$Phenotype == "CD20+", ]
s_tumour2_cd3 <- sub_tumour2[sub_tumour2$Phenotype == "CD3+", ]
s_tumour2_cd3cd4 <- sub_tumour2[sub_tumour2$Phenotype == "CD3+CD4+", ]
s_tumour2_cd3cd4rorgt <- sub_tumour2[sub_tumour2$Phenotype == "CD3+CD4+RORgT+", ]
s_tumour2_cd4 <- sub_tumour2[sub_tumour2$Phenotype == "CD4+", ]
s_tumour2_macrophage <- sub_tumour2[sub_tumour2$Phenotype == "Macrophage+", ]
s_tumour2_rorgt <- sub_tumour2[sub_tumour2$Phenotype == "RORgT+", ]
s_tumour2_other <- sub_tumour2[sub_tumour2$Phenotype == "Other+", ]

s_white_all <- sub_white[sub_white$Phenotype == "All", ]
s_white_ca9 <- sub_white[sub_white$Phenotype == "CA9+", ]
s_white_cd20 <- sub_white[sub_white$Phenotype == "CD20+", ]
s_white_cd3 <- sub_white[sub_white$Phenotype == "CD3+", ]
s_white_cd3cd4 <- sub_white[sub_white$Phenotype == "CD3+CD4+", ]
s_white_cd3cd4rorgt <- sub_white[sub_white$Phenotype == "CD3+CD4+RORgT+", ]
s_white_cd4 <- sub_white[sub_white$Phenotype == "CD4+", ]
s_white_macrophage <- sub_white[sub_white$Phenotype == "Macrophage+", ]
s_white_rorgt <- sub_white[sub_white$Phenotype == "RORgT+", ]
s_white_other <- sub_white[sub_white$Phenotype == "Other+", ]

# Calculating Totals for each Phenotype
all_all <- sum(s_all_all$Total.Cells)
all_ca9 <- sum(s_all_ca9$Total.Cells)
all_cd20 <- sum(s_all_cd20$Total.Cells)
all_cd3 <- sum(s_all_cd3$Total.Cells)
all_cd3cd4 <- sum(s_all_cd3cd4$Total.Cells)
all_cd3cd4rorgt <- sum(s_all_cd3cd4rorgt$Total.Cells)
all_cd4 <- sum(s_all_cd4$Total.Cells)
all_macrophage <- sum(s_all_macrophage$Total.Cells)
all_rorgt <- sum(s_all_rorgt$Total.Cells)
all_total_rorgt <- sum(all_cd3cd4rorgt, all_rorgt) 
all_total_tcells <- sum(all_cd3, all_cd4, all_cd3cd4, all_cd3cd4rorgt)
all_total_tcells_nororgt <- sum(all_cd3, all_cd4, all_cd3cd4)
all_total_cd4s <- sum(all_cd4, all_cd3cd4, all_cd3cd4rorgt)
all_total_cd4s_nororgt <- sum(all_cd4, all_cd3cd4)
all_other <- sum(s_all_other$Total.Cells)

lympho_all <- sum(s_lympho_all$Total.Cells)
lympho_ca9 <- sum(s_lympho_ca9$Total.Cells)
lympho_cd20 <- sum(s_lympho_cd20$Total.Cells)
lympho_cd3 <- sum(s_lympho_cd3$Total.Cells)
lympho_cd3cd4 <- sum(s_lympho_cd3cd4$Total.Cells)
lympho_cd3cd4rorgt <- sum(s_lympho_cd3cd4rorgt$Total.Cells)
lympho_cd4 <- sum(s_lympho_cd4$Total.Cells)
lympho_macrophage <- sum(s_lympho_macrophage$Total.Cells)
lympho_rorgt <- sum(s_lympho_rorgt$Total.Cells)
lympho_total_rorgt <- sum(lympho_cd3cd4rorgt, lympho_rorgt) 
lympho_total_tcells <- sum(lympho_cd3, lympho_cd4, lympho_cd3cd4, lympho_cd3cd4rorgt)
lympho_total_tcells_nororgt <- sum(lympho_cd3, lympho_cd4, lympho_cd3cd4)
lympho_total_cd4s <- sum(lympho_cd4, lympho_cd3cd4, lympho_cd3cd4rorgt)
lympho_total_cd4s_nororgt <- sum(lympho_cd4, lympho_cd3cd4)
lympho_other <- sum(s_lympho_other$Total.Cells)

stroma_all <- sum(s_stroma_all$Total.Cells)
stroma_ca9 <- sum(s_stroma_ca9$Total.Cells)
stroma_cd20 <- sum(s_stroma_cd20$Total.Cells)
stroma_cd3 <- sum(s_stroma_cd3$Total.Cells)
stroma_cd3cd4 <- sum(s_stroma_cd3cd4$Total.Cells)
stroma_cd3cd4rorgt <- sum(s_stroma_cd3cd4rorgt$Total.Cells)
stroma_cd4 <- sum(s_stroma_cd4$Total.Cells)
stroma_macrophage <- sum(s_stroma_macrophage$Total.Cells)
stroma_rorgt <- sum(s_stroma_rorgt$Total.Cells)
stroma_total_rorgt <- sum(stroma_cd3cd4rorgt, stroma_rorgt) 
stroma_total_tcells <- sum(stroma_cd3, stroma_cd4, stroma_cd3cd4, stroma_cd3cd4rorgt)
stroma_total_tcells_nororgt <- sum(stroma_cd3, stroma_cd4, stroma_cd3cd4)
stroma_total_cd4s <- sum(stroma_cd4, stroma_cd3cd4, stroma_cd3cd4rorgt)
stroma_total_cd4s_nororgt <- sum(stroma_cd4, stroma_cd3cd4)
stroma_other <- sum(s_stroma_other$Total.Cells)

tumour1_all <- sum(s_tumour1_all$Total.Cells)
tumour1_ca9 <- sum(s_tumour1_ca9$Total.Cells)
tumour1_cd20 <- sum(s_tumour1_cd20$Total.Cells)
tumour1_cd3 <- sum(s_tumour1_cd3$Total.Cells)
tumour1_cd3cd4 <- sum(s_tumour1_cd3cd4$Total.Cells)
tumour1_cd3cd4rorgt <- sum(s_tumour1_cd3cd4rorgt$Total.Cells)
tumour1_cd4 <- sum(s_tumour1_cd4$Total.Cells)
tumour1_macrophage <- sum(s_tumour1_macrophage$Total.Cells)
tumour1_rorgt <- sum(s_tumour1_rorgt$Total.Cells)
tumour1_total_rorgt <- sum(tumour1_cd3cd4rorgt, tumour1_rorgt) 
tumour1_total_tcells <- sum(tumour1_cd3, tumour1_cd4, tumour1_cd3cd4, tumour1_cd3cd4rorgt)
tumour1_total_tcells_nororgt <- sum(tumour1_cd3, tumour1_cd4, tumour1_cd3cd4)
tumour1_total_cd4s <- sum(tumour1_cd4, tumour1_cd3cd4, tumour1_cd3cd4rorgt)
tumour1_total_cd4s_nororgt <- sum(tumour1_cd4, tumour1_cd3cd4)
tumour1_other <- sum(s_tumour1_other$Total.Cells)

tumour2_all <- sum(s_tumour2_all$Total.Cells)
tumour2_ca9 <- sum(s_tumour2_ca9$Total.Cells)
tumour2_cd20 <- sum(s_tumour2_cd20$Total.Cells)
tumour2_cd3 <- sum(s_tumour2_cd3$Total.Cells)
tumour2_cd3cd4 <- sum(s_tumour2_cd3cd4$Total.Cells)
tumour2_cd3cd4rorgt <- sum(s_tumour2_cd3cd4rorgt$Total.Cells)
tumour2_cd4 <- sum(s_tumour2_cd4$Total.Cells)
tumour2_macrophage <- sum(s_tumour2_macrophage$Total.Cells)
tumour2_rorgt <- sum(s_tumour2_rorgt$Total.Cells)
tumour2_total_rorgt <- sum(tumour2_cd3cd4rorgt, tumour2_rorgt) 
tumour2_total_tcells <- sum(tumour2_cd3, tumour2_cd4, tumour2_cd3cd4, tumour2_cd3cd4rorgt)
tumour2_total_tcells_nororgt <- sum(tumour2_cd3, tumour2_cd4, tumour2_cd3cd4)
tumour2_total_cd4s <- sum(tumour2_cd4, tumour2_cd3cd4, tumour2_cd3cd4rorgt)
tumour2_total_cd4s_nororgt <- sum(tumour2_cd4, tumour2_cd3cd4)
tumour2_other <- sum(s_tumour2_other$Total.Cells)

total_tumour_all <- sum(tumour1_all, tumour2_all)
total_tumour_ca9 <- sum(tumour1_ca9, tumour2_ca9)
total_tumour_cd20 <- sum(tumour1_cd20, tumour2_cd20)
total_tumour_cd3 <- sum(tumour1_cd3, tumour2_cd3)
total_tumour_cd3cd4 <- sum(tumour1_cd3cd4, tumour2_cd3cd4)
total_tumour_cd3cd4rorgt <- sum(tumour1_cd3cd4rorgt, tumour2_cd3cd4rorgt)
total_tumour_cd4 <- sum(tumour1_cd4, tumour2_cd4)
total_tumour_macrophage <- sum(tumour1_macrophage, tumour2_macrophage)
total_tumour_rorgt <- sum(tumour1_rorgt, tumour2_rorgt)
total_tumour_total_rorgt <- sum(tumour1_cd3cd4rorgt, tumour1_rorgt, tumour2_cd3cd4rorgt, tumour2_rorgt) 
total_tumour_total_tcells <- sum(tumour1_cd3, tumour1_cd4, tumour1_cd3cd4, tumour1_cd3cd4rorgt,
                                 tumour2_cd3, tumour2_cd4, tumour2_cd3cd4, tumour2_cd3cd4rorgt)
total_tumour_total_tcells_nororgt <- sum(tumour1_cd3, tumour1_cd4, tumour1_cd3cd4,
                                         tumour2_cd3, tumour2_cd4, tumour2_cd3cd4)
total_tumour_total_cd4s <- sum(tumour1_cd4, tumour1_cd3cd4, tumour1_cd3cd4rorgt,
                               tumour2_cd4, tumour2_cd3cd4, tumour2_cd3cd4rorgt)
total_tumour_total_cd4s_nororgt <- sum(tumour1_cd4, tumour1_cd3cd4, tumour2_cd4, tumour2_cd3cd4)
total_tumour_other <- sum(tumour1_other, tumour2_other)

white_all <- sum(s_white_all$Total.Cells)
white_ca9 <- sum(s_white_ca9$Total.Cells)
white_cd20 <- sum(s_white_cd20$Total.Cells)
white_cd3 <- sum(s_white_cd3$Total.Cells)
white_cd3cd4 <- sum(s_white_cd3cd4$Total.Cells)
white_cd3cd4rorgt <- sum(s_white_cd3cd4rorgt$Total.Cells)
white_cd4 <- sum(s_white_cd4$Total.Cells)
white_macrophage <- sum(s_white_macrophage$Total.Cells)
white_rorgt <- sum(s_white_rorgt$Total.Cells)
white_total_rorgt <- sum(white_cd3cd4rorgt, white_rorgt) 
white_total_tcells <- sum(white_cd3, white_cd4, white_cd3cd4, white_cd3cd4rorgt)
white_total_tcells_nororgt <- sum(white_cd3, white_cd4, white_cd3cd4)
white_total_cd4s <- sum(white_cd4, white_cd3cd4, white_cd3cd4rorgt)
white_total_cd4s_nororgt <- sum(white_cd4, white_cd3cd4)
white_other <- sum(s_white_other$Total.Cells)

# Creating A Data Frame
all_df <- data.frame(ROI = "Total", Total_CD4 = all_total_cd4s, Total_CD4_No_RORgT = all_total_cd4s_nororgt, CD3 = all_cd3,
                     CD4 = all_cd4, CD3CD4 = all_cd3cd4, Total_Tcells = all_total_tcells, Total_Tcells_No_RORgT = all_total_tcells_nororgt,
                     Th17 = all_cd3cd4rorgt, RORgT = all_rorgt, Total_RORgT = all_total_rorgt, CD20 = all_cd20, Macrophage = all_macrophage,
                     CA9 = all_ca9, Other = all_other, All = all_all)
lymph_df <- data.frame(ROI = "Lymphoid Aggregates", Total_CD4 = lympho_total_cd4s, Total_CD4_No_RORgT = lympho_total_cd4s_nororgt, CD3 = lympho_cd3,
                       CD4 = lympho_cd4, CD3CD4 = lympho_cd3cd4, Total_Tcells = lympho_total_tcells, Total_Tcells_No_RORgT = lympho_total_tcells_nororgt,
                       Th17 = lympho_cd3cd4rorgt, RORgT = lympho_rorgt, Total_RORgT = lympho_total_rorgt, CD20 = lympho_cd20, Macrophage = lympho_macrophage,
                       CA9 = lympho_ca9, Other = lympho_other, All = lympho_all)
stroma_df <- data.frame(ROI = "Stroma", Total_CD4 = stroma_total_cd4s, Total_CD4_No_RORgT = stroma_total_cd4s_nororgt, CD3 = stroma_cd3,
                        CD4 = stroma_cd4, CD3CD4 = stroma_cd3cd4, Total_Tcells = stroma_total_tcells, Total_Tcells_No_RORgT = stroma_total_tcells_nororgt,
                        Th17 = stroma_cd3cd4rorgt, RORgT = stroma_rorgt, Total_RORgT = stroma_total_rorgt, CD20 = stroma_cd20, Macrophage = stroma_macrophage,
                        CA9 = stroma_ca9, Other = stroma_other, All = stroma_all)
tumour_df <- data.frame(ROI = "Tumour", Total_CD4 = total_tumour_total_cd4s, Total_CD4_No_RORgT = total_tumour_total_cd4s_nororgt, CD3 = total_tumour_cd3,
                        CD4 = total_tumour_cd4, CD3CD4 = total_tumour_cd3cd4, Total_Tcells = total_tumour_total_tcells, Total_Tcells_No_RORgT = total_tumour_total_tcells_nororgt,
                        Th17 = total_tumour_cd3cd4rorgt, RORgT = total_tumour_rorgt, Total_RORgT = total_tumour_total_rorgt, CD20 = total_tumour_cd20, Macrophage = total_tumour_macrophage,
                        CA9 = total_tumour_ca9, Other = total_tumour_other, All = total_tumour_all)
white_df <- data.frame(ROI = "White Space", Total_CD4 = white_total_cd4s, Total_CD4_No_RORgT = white_total_cd4s_nororgt, CD3 = white_cd3,
                       CD4 = white_cd4, CD3CD4 = white_cd3cd4, Total_Tcells = white_total_tcells, Total_Tcells_No_RORgT = white_total_tcells_nororgt,
                       Th17 = white_cd3cd4rorgt, RORgT = white_rorgt, Total_RORgT = white_total_rorgt, CD20 = white_cd20, Macrophage = white_macrophage,
                       CA9 = white_ca9, Other = white_other, All = white_all)

roi_totals <- rbind(all_df, tumour_df, stroma_df, lymph_df, white_df)

# Export as a CSV to 'Tidy' directory
## Change the name to 'Sample_ROI_Totals.csv' format
write.csv(roi_totals, file = "LTX001_ROI_Totals.csv", row.names = F)


# Calculated Number of RORgT Postive Cells/10,000 Cells # 
## Ensure Correct Import File Name
Tidy_ROI <- read.csv("LTX001_ROI_Totals.csv")

# Calculate The Quotient
## Firstly Get The Total Number of Cells (all cell phenotype columns summed)
### Then divide this value by 10,000 to get the "quotient"
quotient <- Tidy_ROI[1, ]
quotient <- sum(quotient$CD3, quotient$CD4, quotient$CD3CD4, quotient$Th17, quotient$RORgT, quotient$CD20, 
                quotient$Macrophage, quotient$CA9, quotient$Other)
quotient <- quotient/10000

# Calculate The Number of RORgT Positive Cells/10,000 Using The "quotient"
## The results here are per 10k cells as counted for the total tumour NOT BY COMPARTMENT (e.g. /10k lymphoid aggregate cells)
roi_names <- c("Total", "Tumour", "Stroma", "Lymphoid Aggregates", "White Space")
ROI_per_10k <- data.frame(ROI = roi_names, Total_CD4_per10k = Tidy_ROI$Total_CD4/quotient, Total_CD4_No_RORgT_per10k = Tidy_ROI$Total_CD4_No_RORgT/quotient,
                          CD3_per10k = Tidy_ROI$CD3/quotient, CD4_per10k = Tidy_ROI$CD4/quotient, CD3CD4_per10k = Tidy_ROI$CD3CD4/quotient,
                          Total_Tcells_per10k = Tidy_ROI$Total_Tcells/quotient, Total_Tcells_No_RORgT_per10k = Tidy_ROI$Total_Tcells_No_RORgT/quotient,
                          Th17_per10k = Tidy_ROI$Th17/quotient, RORgT_per10k = Tidy_ROI$RORgT/quotient, Total_RORgT_per10k = Tidy_ROI$Total_RORgT/quotient,
                          CD20_per10k = Tidy_ROI$CD20/quotient, Macrophage_per10k = Tidy_ROI$Macrophage/quotient, CA9_per10k = Tidy_ROI$CA9/quotient,
                          Other_per10k = Tidy_ROI$Other/quotient)

# Export as a CSV to 'Tidy' directory
## Change the name to 'Sample_ROI_Prevalence.csv' format
write.csv(ROI_per_10k, file = "LTX001_ROI_Prevalence.csv", row.names = F)


# Quick Summmary Dotplot #

# Import and Specifiying Order of Groups
ROI_prev <- read.csv("LTX001_ROI_Prevalence.csv")
ROI_prev$ROI <- factor(ROI_prev$ROI, levels = c("Lymphoid Aggregates", "Tumour", "Stroma", "Total", "White Space"))

# Dot Plotting, Stats and Start Export
cairo_pdf("LTX001_ROI_Prevalence.pdf")
dot_1 <- ggplot(ROI_prev, aes(x = ROI, y = Th17_per10k)) +
  geom_dotplot(binaxis = "y", stackdir = "center", dotsize = 0.5, color = "Black", fill = "Black") +
  labs(x = "Segmented ROI", y = "Number of Th17s/10,000 Cells") +
  theme_bw() +
  theme(axis.text = element_text(size = 8)) +
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(legend.position = "none") + 
  ggtitle("Th17s in LTX001 ROIs") +
  theme(plot.title = element_text(hjust = 0.5))

# View plot and save
dot_1
dev.off()


# If I need to change to a log axis then use the below #
# scale_y_log10(breaks = trans_breaks("log10", function(x) 10^x),labels = trans_format("log10", math_format(10^.x)))

