########### Correlation Plotting ################
## This example uses the signficant 1q21.3 genes to plot ##

library(ggpubr)
library(dplyr)
setwd("C:/Users/rbuch/DataShare/Thesis/Thesis Figures/Thesis Figures Results Chapter 1 Genetics/1q21.3 RORC Correlation Re-analysis")

# Import
my_data <- read.csv("RSEM_for_correlation_plot.csv", header = F, row.names = 1)

# Transpose
transposed <- as.data.frame(t(my_data))

# Make a analysis df
## With the comparison genes of interest
analysis_df <- select(transposed, RORC, ENSA, GOLPH3L, HORMAD1, ARNT, SETDB1, BNIPL, CDC42SE1, GABPB2, LYSMD1,
                      VPS72, PIP5K1A, PSMD4, ZNF687, PI4KB, SELENBP1, POGZ, CGN, TUFT1, SNX27, MRPL9, OAZ3, TDRKH,
                      LINGO4, C2CD4D, THEM5, THEM4, INTS3, GATAD2B, DENND4B, CRTC2, SLC39A1, CREB3L4, NUP210L,
                      UBAP2L, IL6R, UBE2Q1, PMVK, PBXIP1, PYGO2, ZBTB7B, EFNA4)

# Export location set up
dir.create("correlation_plots")
setwd("./correlation_plots/")

### Correlation Plots all vs RORC ###

cairo_pdf("./ENSA.pdf")
ggscatter(analysis_df, x = "RORC", y = "ENSA",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./GOLPH3L.pdf")
ggscatter(analysis_df, x = "RORC", y = "GOLPH3L",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./HORMAD1.pdf")
ggscatter(analysis_df, x = "RORC", y = "HORMAD1",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./ARNT.pdf")
ggscatter(analysis_df, x = "RORC", y = "ARNT",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./SETDB1.pdf")
ggscatter(analysis_df, x = "RORC", y = "SETDB1",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./BNIPL.pdf")
ggscatter(analysis_df, x = "RORC", y = "BNIPL",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./CDC42SE1.pdf")
ggscatter(analysis_df, x = "RORC", y = "CDC42SE1",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./GABPB2.pdf")
ggscatter(analysis_df, x = "RORC", y = "GABPB2",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./LYSMD1.pdf")
ggscatter(analysis_df, x = "RORC", y = "LYSMD1",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./VPS72.pdf")
ggscatter(analysis_df, x = "RORC", y = "VPS72",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./PIP5K1A.pdf")
ggscatter(analysis_df, x = "RORC", y = "PIP5K1A",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./PSMD4.pdf")
ggscatter(analysis_df, x = "RORC", y = "PSMD4",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./ZNF687.pdf")
ggscatter(analysis_df, x = "RORC", y = "ZNF687",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./PI4KB.pdf")
ggscatter(analysis_df, x = "RORC", y = "PI4KB",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./SELENBP1.pdf")
ggscatter(analysis_df, x = "RORC", y = "SELENBP1",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./POGZ.pdf")
ggscatter(analysis_df, x = "RORC", y = "POGZ",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./CGN.pdf")
ggscatter(analysis_df, x = "RORC", y = "CGN",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./TUFT1.pdf")
ggscatter(analysis_df, x = "RORC", y = "TUFT1",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./SNX27.pdf")
ggscatter(analysis_df, x = "RORC", y = "SNX27",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./MRPL9.pdf")
ggscatter(analysis_df, x = "RORC", y = "MRPL9",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./OAZ3.pdf")
ggscatter(analysis_df, x = "RORC", y = "OAZ3",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./TDRKH.pdf")
ggscatter(analysis_df, x = "RORC", y = "TDRKH",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./LINGO4.pdf")
ggscatter(analysis_df, x = "RORC", y = "LINGO4",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./C2CD4D.pdf")
ggscatter(analysis_df, x = "RORC", y = "C2CD4D",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./THEM5.pdf")
ggscatter(analysis_df, x = "RORC", y = "THEM5",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./THEM4.pdf")
ggscatter(analysis_df, x = "RORC", y = "THEM4",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./INTS3.pdf")
ggscatter(analysis_df, x = "RORC", y = "INTS3",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./GATAD2B.pdf")
ggscatter(analysis_df, x = "RORC", y = "GATAD2B",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./DENND4B.pdf")
ggscatter(analysis_df, x = "RORC", y = "DENND4B",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./CRTC2.pdf")
ggscatter(analysis_df, x = "RORC", y = "CRTC2",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./SLC39A1.pdf")
ggscatter(analysis_df, x = "RORC", y = "SLC39A1",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./CREB3L4.pdf")
ggscatter(analysis_df, x = "RORC", y = "CREB3L4",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./NUP210L.pdf")
ggscatter(analysis_df, x = "RORC", y = "NUP210L",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./UBAP2L.pdf")
ggscatter(analysis_df, x = "RORC", y = "UBAP2L",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./IL6R.pdf")
ggscatter(analysis_df, x = "RORC", y = "IL6R",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./UBE2Q1.pdf")
ggscatter(analysis_df, x = "RORC", y = "UBE2Q1",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./PMVK.pdf")
ggscatter(analysis_df, x = "RORC", y = "PMVK",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./PBXIP1.pdf")
ggscatter(analysis_df, x = "RORC", y = "PBXIP1",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./PYGO2.pdf")
ggscatter(analysis_df, x = "RORC", y = "PYGO2",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./ZBTB7B.pdf")
ggscatter(analysis_df, x = "RORC", y = "ZBTB7B",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

cairo_pdf("./EFNA4.pdf")
ggscatter(analysis_df, x = "RORC", y = "EFNA4",
          add = "reg.line", conf.int = T, cor.coef = T,
          cor.method = "pearson")
dev.off()

