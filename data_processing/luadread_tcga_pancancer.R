### Lung Adenocarcinoma PanCancer Atlas Read/Pre-proccessing ###
# Key commands
source("C:/Users/rbuch/Local Documents/PhD/Local_R_Repos/thesis/functions/functions.R")
setwd("L:/Richard B/TCGA_data/Pancancer/raw_csv")


## Clinical Read and Tidy ##

clinical_pat <- read.csv("data_clinical.csv", header = T)

# Remove uneeded columns
uneeded <- c("Sample.ID", "Cancer.Study", "Cancer.Type.Detailed", "Sample.Type", 
             "Ethnicity.Category", "Race.Category", "Subtype", 
             "Last.Alive.Less.Initial.Pathologic.Diagnosis.Date.Calculated.Day.Value",
             "Last.Communication.Contact.from.Initial.Pathologic.Diagnosis.Date")
clin1 <- droplevels(clinical_pat[,!(names(clinical_pat) %in% uneeded)])

# Fix factors/numerics
## DontFactor vector is columns with numeric values - R may call the str() of these as integers
### The numericthese function converts any integers to numeric values
DontFactor <- c("Mutation.Count", "Fraction.Genome.Altered", "Diagnosis.Age", "Aneuploidy.Score")
clin2 <- nofactorthese(clin1, DontFactor)
clin3 <- numericthese(clin2, DontFactor)

# Change Patient IDs from - to . and write csv
clin3$Patient.ID <- gsub("-", "\\.", clin3$Patient.ID)
luad_tcga_pancancer_clinical <- clin3
setwd("L:/Richard B/TCGA_data/Pancancer/processed_csv")
write.csv(luad_tcga_pancancer_clinical, "luad_tcga_pancancer_clinical.csv", row.names = F)
setwd("L:/Richard B/TCGA_data/Pancancer/raw_csv")


## Copy Number Read and Tidy ##

# Create a blank df to allocate memory to read the CNA .csv
blankdf <- data.frame()[1:12000000, ]
CNA <- read.csv("data_CNA.csv", header = T)

# Collate patients into a column called "Patient.ID" and values into "CNA_NL" 
## Correct strcture of the TCGA Patient ID by changing - to . and removing the last three characters from each element
### Re-order columns
CNA1 <- CNA %>% gather(contains("TCGA"), key = "Patient.ID", value = "CNA_NL")
# ARCHIVE AS DONE THIS STEP ON EXCEL FOR THIS DATA: CNA1$Patient.ID <- gsub("-", "\\.", CNA1$Patient.ID)
# ARCHIVE AS DONE THIS STEP ON EXCEL FOR THIS DATA: CNA1$Patient.ID <- gsub(".{3}$", "", CNA1$Patient.ID)
CNA1 <- CNA1[,c(3,1,2,4)]

# Fix factors/numerics
DoFactor <- c("Patient.ID", "Entrez_Gene_Id")
CNA2 <- factorthese(CNA1, DoFactor)
NoFactor <- c("CNA_NL")
CNA3 <- nofactorthese(CNA2, NoFactor)

# Write csv
luad_tcga_pancancer_cna <- CNA3
setwd("L:/Richard B/TCGA_data/Pancancer/processed_csv")
write.csv(luad_tcga_pancancer_cna, "luad_tcga_pancancer_cna.csv", row.names = F)
rm(blankdf)
setwd("L:/Richard B/TCGA_data/Pancancer/raw_csv")


## RNA-Seq ##
# RSEM - RPKM EL
RNAEL1 <- read.csv("data_RNA_Seq_v2_expression_median.csv", header = T)

# Remove patients with NA
## Generally fix NA
RNAEL1[RNAEL1 == "#DIV/0!" | RNAEL1 == "NaN" | RNAEL1 == "#N/A" | RNAEL1 == "#VALUE!"] <- NA

# Keeps columns where NA is = 0
RNAEL2 <- RNAEL1[,colMeans(is.na(RNAEL1)) == 0]

# Convert all columns but Hugo_Symbol to numerics
Leave <- c("Hugo_Symbol")
selections <- !names(RNAEL2) %in% Leave
RNAEL2[,selections] <- as.numeric(as.character(unlist(RNAEL2[,selections])))
RNAEL3 <- droplevels(RNAEL2)

# Collate patients into a column called Patient.ID and values into 'RNASeqEL'
RNAEL4 <- RNAEL3 %>% gather(contains("TCGA"), key = "Patient.ID", value = "RNASeqEL")

# Factor the columns
NoFactor <- c("RNASeqEL")
RNAEL5 <- droplevels(nofactorthese(RNAEL4, NoFactor))

# Arrange into "DataType"
RNAEL6 <- RNAEL5 %>% gather(contains("RNASeqEL"), key = "DataType", value = "Value")

# RSEM - RPKM Z Scores
RNAZ1 <- read.csv("data_RNA_Seq_v2_mRNA_median_Zscores.csv", header = T)

# Collate patients into a column called Patient.ID and values into 'RNASeqEL'
RNAZ2 <- RNAZ1 %>% gather(contains("TCGA"), key = "Patient.ID", value = "RNASeqZScore")

# Factor the columns
NoFactor <- c("RNASeqZScore")
RNAZ3 <- droplevels(nofactorthese(RNAZ2, NoFactor))

# Arrange into "DataType"
RNAZ4 <- RNAZ3 %>% gather(contains("RNASeqZScore"), key = "DataType", value = "Value")

# Merge (rbind() here) and Write
luad_tcga_pancancer_rna <- rbind(RNAZ4, RNAEL6)
setwd("L:/Richard B/TCGA_data/Pancancer/processed_csv")
write.csv(luad_tcga_pancancer_rna, "luad_tcga_pancancer_rna.csv", row.names = F)
setwd("L:/Richard B/TCGA_data/Pancancer/raw_csv")


## Mutations ##
mut <- read.csv("data_mutations_extended.csv", header = T)

# Remove columns with NA or empty data
mut1 <- mut %>% dplyr::select(-contains("Validation_Allele"))%>% dplyr::select(-contains("BAM_File")) %>%
  dplyr::select(-matches("Score"))

# Remove uneeded columns
uneeded <- c("Entrez_Gene_Id", "Center", "NCBI_Build", "Strand",  "dbSNP_RS", "dbSNP_Val_Status",
             "Matched_Norm_Sample_Barcode", "Match_Norm_Seq_Allele1", "Match_Norm_Seq_Allele2", "Tumor_Validation_Allele1",
             "Tumor_Validation_Allele2", "Match_Norm_Validation_Allele1", "Match_Norm_Validation_Allele2", "Verification_Status",
             "Validation_Status", "Mutation_Status", "Sequencing_Phase", "Sequence_Source", "Validation_Method", "Score",
             "BAM_File", "Sequencer", "t_ref_count", "t_alt_count", "n_ref_count", "n_alt_count", "HGVSp",
             "Transcript_ID", "RefSeq", "Codons", "Hotspot", "NCALLERS", "ALLELE_NUM", "PICK", "UNIPARC", "Feature",
             "CONTEXT", "Gene", "HGNC_ID", "MERGESOURCE", "ExAC_AF_AMR", "DISTANCE", "SYMBOL_SOURCE", "Existing_variation",
             "SYMBOL", "ExAC_AF_SAS", "VARIANT_CLASS", "AA_MAF", "HIGH_INF_POS", "GENE_PHENO", "ExAC_AF_AFR",
             "ASN_MAF", "PHENO", "BIOTYPE", "AFR_MAF", "DOMAINS", "MOTIF_SCORE_CHANGE", "EA_MAF", "ExAC_AF_NFE",
             "INTRON", "TREMBL", "AMR_MAF", "EAS_MAF", "CANONICAL", "DBVS", "all_effects", "ExAC_AF_EAS",
             "GMAF", "MOTIF_NAME", "TSL", "SOMATIC", "MOTIF_POS", "SWISSPROT", "ExAC_AF_FIN", "EUR_MAF",
             "Feature_type", "HGVS_OFFSET", "FILTER", "ENSP", "ExAC_AF",  "CENTERS", "CCDS", "EXON", "ExAC_AF_OTH",
             "SAS_MAF", "Exon_Number", "MINIMISED", "PUBMED")
mut2 <- droplevels(mut1[,!(names(mut1) %in% uneeded)])

# Rearrange columns so IDs first
mut3 <- mut2[,c(11,1:10,12:25)]

# Fix factors/numerics and rearrange columns
DontFactor <- c("Start_Position", "End_Position")
mut4 <- nofactorthese(mut3, DontFactor)
mut4$Patient.ID <- samptopat(mut4$Tumor_Sample_Barcode)
mut4$Patient.ID <- gsub("-", "\\.", mut4$Patient.ID)
mut4 <- mut4[,c(26, 1:25)]
uneeded2 <- c("Tumor_Sample_Barcode")
mut5 <- droplevels(mut4[,!(names(mut4) %in% uneeded2)])

# Write CSV
luad_tcga_pancancer_mut <- mut5
setwd("L:/Richard B/TCGA_data/Pancancer/processed_csv")
write.csv(luad_tcga_pancancer_mut, "luad_tcga_pancancer_mut.csv", row.names = F)
setwd("L:/Richard B/TCGA_data/Pancancer/raw_csv")


## Fusions ##
fus <- read.csv("data_fusions.csv", header = T)

# Convert patient IDs and remove columns
fus$Patient.ID <- samptopat(fus$Tumor_Sample_Barcode)
fus1 <- fus[,c(10, 1:9)]
fus1$Patient.ID <- gsub("-", "\\.", fus1$Patient.ID)
uneeded <- c("Tumor_Sample_Barcode", "Entrez_Gene_Id", "Center", "DNA_support",
             "RNA_support", "Method")
fus2 <- droplevels(fus1[,!(names(fus1) %in% uneeded)])

# Fix factors and numerics
DontFactor <- c("")
fus3 <- nofactorthese(fus2, DontFactor)

# Write CSV
luad_tcga_pancancer_fusion <- fus3
setwd("L:/Richard B/TCGA_data/Pancancer/processed_csv")
write.csv(luad_tcga_pancancer_fusion, "luad_tcga_pancancer_fusion.csv", row.names = F)
setwd("L:/Richard B/TCGA_data/Pancancer/raw_csv")

