##########################################################
##--------------RORC Correlation Analysis---------------##
##########################################################

# Library
library(ggpubr)
library(dplyr)


## Other Mutation group RORC correlations ##

# Import
## RORC RSEM data import and import of other genes RSEM data for correlation
setwd("C:/Users/rbuch/DataShare/Thesis/Thesis Figures/Thesis Figures Results Chapter 1 Genetics/1q21.3 RORC Correlation Re-analysis")
rorc_other_mt <- read.csv("RORC_for_correlation.csv", row.names = 1, header = F)
other_mt <- read.csv("RSEM_for_correlation.csv", row.names = 1, header = F)

# Remove rows with only 0 in them
other_mt <- other_mt[apply(other_mt[,-1], 1, function(x) !all(x==0)),]

# Numerisise RORC data and query data
## Keep 'data_names' df for rownames
rorc_other2 <- as.numeric(rorc_other_mt)
other_mt2 <- as.matrix(other_mt)
data_names <- other_mt

# For Loop Correlation Analysis Pearson
correlations <- vector()
for (i in 1:nrow(other_mt2)) {
  print(rownames(data_names[i, ]))
  row <- other_mt2[i, ]
  corr_test <- cor.test(rorc_other2, row, method = "pearson")
  if(corr_test$p.value <=0.05) {
    correlations[length(correlations)+1] <- rownames(data_names[i, ])
    correlations[length(correlations)+1] <- corr_test$p.value
    }
}

sig_corr <- as.data.frame(correlations)

write.csv(sig_corr, "other_mt_sig_rorc_correlations_pearson.csv", row.names = F)

# For Loop Correlation Analysis Spearman
rm(correlations, sig_corr)

correlations <- vector()
for (i in 1:nrow(other_mt2)) {
  print(rownames(data_names[i, ]))
  row <- other_mt2[i, ]
  corr_test <- cor.test(rorc_other2, row, method = "spearman")
  if(corr_test$p.value <=0.05) {
    correlations[length(correlations)+1] <- rownames(data_names[i, ])
    correlations[length(correlations)+1] <- corr_test$p.value
  }
}

sig_corr <- as.data.frame(correlations)

write.csv(sig_corr, "other_mt_sig_rorc_correlations_spearman.csv", row.names = F)

