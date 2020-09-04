######################################################################
################### CD4_Collation Analysis Script ####################
######################################################################
##### A Vectra analysis overview script ##############################
####### Interesting results from this are compared manually ##########
######################################################################

setwd("C:/Users/rbuch/Local Documents/PhD/Temporary/Vectra Analysis COPY BACK TO EXTERNAL HDD AFTER DONE/Analysis/Full Phenotyping Analysis/Total_Tumour/Analysis")
data <- read.csv("CD4_Collation.csv")
data1 <- data

### First section is using all tumours ###

# Count 
s_wt <- data1[data1$Mutation == "WT", ]
s_kras <- data1[data1$Mutation == "KRAS", ]
s_stk11 <- data1[data1$Mutation == "STK11", ]
s_krasstk11 <- data1[data1$Mutation == "KRAS_STK11", ]
s_mt <- rbind(s_kras, s_stk11, s_krasstk11)

Count_Total_kras <- wilcox.test(s_wt$Count_Total, s_kras$Count_Total)
Count_Total_stk11 <- wilcox.test(s_wt$Count_Total, s_stk11$Count_Total)
Count_Total_krasstk11 <- wilcox.test(s_wt$Count_Total, s_krasstk11$Count_Total)
Count_Total_mt <- wilcox.test(s_wt$Count_Total, s_mt$Count_Total)

total_count_kras_vs_wt <- Count_Total_kras$p.value
total_count_stk11_vs_wt <- Count_Total_stk11$p.value
total_count_krasstk11_vs_wt <- Count_Total_krasstk11$p.value
total_count_mt_vs_wt <- Count_Total_mt$p.value

Count_Tumour_kras <- wilcox.test(s_wt$Count_Tumour, s_kras$Count_Tumour)
Count_Tumour_stk11 <- wilcox.test(s_wt$Count_Tumour, s_stk11$Count_Tumour)
Count_Tumour_krasstk11 <- wilcox.test(s_wt$Count_Tumour, s_krasstk11$Count_Tumour)
Count_Tumour_mt <- wilcox.test(s_wt$Count_Tumour, s_mt$Count_Tumour)

tumour_count_kras_vs_wt <- Count_Tumour_kras$p.value
tumour_count_stk11_vs_wt <- Count_Tumour_stk11$p.value
tumour_count_krasstk11_vs_wt <- Count_Tumour_krasstk11$p.value
tumour_count_mt_vs_wt <- Count_Tumour_mt$p.value

Count_Stroma_kras <- wilcox.test(s_wt$Count_Stroma, s_kras$Count_Stroma)
Count_Stroma_stk11 <- wilcox.test(s_wt$Count_Stroma, s_stk11$Count_Stroma)
Count_Stroma_krasstk11 <- wilcox.test(s_wt$Count_Stroma, s_krasstk11$Count_Stroma)
Count_Stroma_mt <- wilcox.test(s_wt$Count_Stroma, s_mt$Count_Stroma)

stroma_count_kras_vs_wt <- Count_Stroma_kras$p.value
stroma_count_stk11_vs_wt <- Count_Stroma_stk11$p.value
stroma_count_krasstk11_vs_wt <- Count_Stroma_krasstk11$p.value
stroma_count_mt_vs_wt <- Count_Stroma_mt$p.value

Count_Lymphoid_Aggregates_kras <- wilcox.test(s_wt$Count_Lymphoid_Aggregates, s_kras$Count_Lymphoid_Aggregates)
Count_Lymphoid_Aggregates_stk11 <- wilcox.test(s_wt$Count_Lymphoid_Aggregates, s_stk11$Count_Lymphoid_Aggregates)
Count_Lymphoid_Aggregates_krasstk11 <- wilcox.test(s_wt$Count_Lymphoid_Aggregates, s_krasstk11$Count_Lymphoid_Aggregates)
Count_Lymphoid_Aggregates_mt <- wilcox.test(s_wt$Count_Lymphoid_Aggregates, s_mt$Count_Lymphoid_Aggregates)

lymphoid_count_kras_vs_wt <- Count_Lymphoid_Aggregates_kras$p.value
lymphoid_count_stk11_vs_wt <- Count_Lymphoid_Aggregates_stk11$p.value
lymphoid_count_krasstk11_vs_wt <- Count_Lymphoid_Aggregates_krasstk11$p.value
lymphoid_count_mt_vs_wt <- Count_Lymphoid_Aggregates_mt$p.value

Count_White_Space_kras <- wilcox.test(s_wt$Count_White_Space, s_kras$Count_White_Space)
Count_White_Space_stk11 <- wilcox.test(s_wt$Count_White_Space, s_stk11$Count_White_Space)
Count_White_Space_krasstk11 <- wilcox.test(s_wt$Count_White_Space, s_krasstk11$Count_White_Space)
Count_White_Space_mt <- wilcox.test(s_wt$Count_White_Space, s_mt$Count_White_Space)

white_count_kras_vs_wt <- Count_White_Space_kras$p.value
white_count_stk11_vs_wt <- Count_White_Space_stk11$p.value
white_count_krasstk11_vs_wt <- Count_White_Space_krasstk11$p.value
white_count_mt_vs_wt <- Count_White_Space_mt$p.value

# Prevalence

Per10k_Total_kras <- wilcox.test(s_wt$Per10k_Total, s_kras$Per10k_Total)
Per10k_Total_stk11 <- wilcox.test(s_wt$Per10k_Total, s_stk11$Per10k_Total)
Per10k_Total_krasstk11 <- wilcox.test(s_wt$Per10k_Total, s_krasstk11$Per10k_Total)
Per10k_Total_mt <- wilcox.test(s_wt$Per10k_Total, s_mt$Per10k_Total)

total_prev_kras_vs_wt <- Per10k_Total_kras$p.value
total_prev_stk11_vs_wt <- Per10k_Total_stk11$p.value
total_prev_krasstk11_vs_wt <- Per10k_Total_krasstk11$p.value
total_prev_mt_vs_wt <- Per10k_Total_mt$p.value

Per10k_Tumour_kras <- wilcox.test(s_wt$Per10k_Tumour, s_kras$Per10k_Tumour)
Per10k_Tumour_stk11 <- wilcox.test(s_wt$Per10k_Tumour, s_stk11$Per10k_Tumour)
Per10k_Tumour_krasstk11 <- wilcox.test(s_wt$Per10k_Tumour, s_krasstk11$Per10k_Tumour)
Per10k_Tumour_mt <- wilcox.test(s_wt$Per10k_Tumour, s_mt$Per10k_Tumour)

tumour_prev_kras_vs_wt <- Per10k_Tumour_kras$p.value
tumour_prev_stk11_vs_wt <- Per10k_Tumour_stk11$p.value
tumour_prev_krasstk11_vs_wt <- Per10k_Tumour_krasstk11$p.value
tumour_prev_mt_vs_wt <- Per10k_Tumour_mt$p.value

Per10k_Stroma_kras <- wilcox.test(s_wt$Per10k_Stroma, s_kras$Per10k_Stroma)
Per10k_Stroma_stk11 <- wilcox.test(s_wt$Per10k_Stroma, s_stk11$Per10k_Stroma)
Per10k_Stroma_krasstk11 <- wilcox.test(s_wt$Per10k_Stroma, s_krasstk11$Per10k_Stroma)
Per10k_Stroma_mt <- wilcox.test(s_wt$Per10k_Stroma, s_mt$Per10k_Stroma)

stroma_prev_kras_vs_wt <- Per10k_Stroma_kras$p.value
stroma_prev_stk11_vs_wt <- Per10k_Stroma_stk11$p.value
stroma_prev_krasstk11_vs_wt <- Per10k_Stroma_krasstk11$p.value
stroma_prev_mt_vs_wt <- Per10k_Stroma_mt$p.value

Per10k_Lymphoid_Aggregates_kras <- wilcox.test(s_wt$Per10k_Lymphoid_Aggregates, s_kras$Per10k_Lymphoid_Aggregates)
Per10k_Lymphoid_Aggregates_stk11 <- wilcox.test(s_wt$Per10k_Lymphoid_Aggregates, s_stk11$Per10k_Lymphoid_Aggregates)
Per10k_Lymphoid_Aggregates_krasstk11 <- wilcox.test(s_wt$Per10k_Lymphoid_Aggregates, s_krasstk11$Per10k_Lymphoid_Aggregates)
Per10k_Lymphoid_Aggregates_mt <- wilcox.test(s_wt$Per10k_Lymphoid_Aggregates, s_mt$Per10k_Lymphoid_Aggregates)

lymphoid_prev_kras_vs_wt <- Per10k_Lymphoid_Aggregates_kras$p.value
lymphoid_prev_stk11_vs_wt <- Per10k_Lymphoid_Aggregates_stk11$p.value
lymphoid_prev_krasstk11_vs_wt <- Per10k_Lymphoid_Aggregates_krasstk11$p.value
lymphoid_prev_mt_vs_wt <- Per10k_Lymphoid_Aggregates_mt$p.value

Per10k_White_Space_kras <- wilcox.test(s_wt$Per10k_White_Space, s_kras$Per10k_White_Space)
Per10k_White_Space_stk11 <- wilcox.test(s_wt$Per10k_White_Space, s_stk11$Per10k_White_Space)
Per10k_White_Space_krasstk11 <- wilcox.test(s_wt$Per10k_White_Space, s_krasstk11$Per10k_White_Space)
Per10k_White_Space_mt <- wilcox.test(s_wt$Per10k_White_Space, s_mt$Per10k_White_Space)

white_prev_kras_vs_wt <- Per10k_White_Space_kras$p.value
white_prev_stk11_vs_wt <- Per10k_White_Space_stk11$p.value
white_prev_krasstk11_vs_wt <- Per10k_White_Space_krasstk11$p.value
white_prev_mt_vs_wt <- Per10k_White_Space_mt$p.value

total_output <- rbind(total_count_kras_vs_wt, total_count_stk11_vs_wt, total_count_krasstk11_vs_wt, total_count_mt_vs_wt,
                      tumour_count_kras_vs_wt, tumour_count_stk11_vs_wt, tumour_count_krasstk11_vs_wt, tumour_count_mt_vs_wt,
                      stroma_count_kras_vs_wt, stroma_count_stk11_vs_wt, stroma_count_krasstk11_vs_wt, stroma_count_mt_vs_wt,
                      lymphoid_count_kras_vs_wt, lymphoid_count_stk11_vs_wt, lymphoid_count_krasstk11_vs_wt, lymphoid_count_mt_vs_wt,
                      white_count_kras_vs_wt, white_count_stk11_vs_wt, white_count_krasstk11_vs_wt, white_count_mt_vs_wt,
                      total_prev_kras_vs_wt, total_prev_stk11_vs_wt, total_prev_krasstk11_vs_wt, total_prev_mt_vs_wt,
                      tumour_prev_kras_vs_wt, tumour_prev_stk11_vs_wt, tumour_prev_krasstk11_vs_wt, tumour_prev_mt_vs_wt,
                      stroma_prev_kras_vs_wt, stroma_prev_stk11_vs_wt, stroma_prev_krasstk11_vs_wt, stroma_prev_mt_vs_wt,
                      lymphoid_prev_kras_vs_wt, lymphoid_prev_stk11_vs_wt, lymphoid_prev_krasstk11_vs_wt, lymphoid_prev_mt_vs_wt,
                      white_prev_kras_vs_wt, white_prev_stk11_vs_wt, white_prev_krasstk11_vs_wt, white_prev_mt_vs_wt)
write.csv(total_output, "CD4_Collation_Results.csv")

### Second section is using only 'big' tumours ###

data2 <- data1
data3 <- data2[data2$ID != "S390436", ]
data3 <- data3[data3$ID != "S390321", ]
data3 <- data3[data3$ID != "S390358", ]

s_wt <- data3[data3$Mutation == "WT", ]
s_kras <- data3[data3$Mutation == "KRAS", ]
s_stk11 <- data3[data3$Mutation == "STK11", ]
s_krasstk11 <- data3[data3$Mutation == "KRAS_STK11", ]
s_mt <- rbind(s_kras, s_stk11, s_krasstk11)

Count_Total_kras <- wilcox.test(s_wt$Count_Total, s_kras$Count_Total)
Count_Total_stk11 <- wilcox.test(s_wt$Count_Total, s_stk11$Count_Total)
Count_Total_krasstk11 <- wilcox.test(s_wt$Count_Total, s_krasstk11$Count_Total)
Count_Total_mt <- wilcox.test(s_wt$Count_Total, s_mt$Count_Total)

total_count_kras_vs_wt <- Count_Total_kras$p.value
total_count_stk11_vs_wt <- Count_Total_stk11$p.value
total_count_krasstk11_vs_wt <- Count_Total_krasstk11$p.value
total_count_mt_vs_wt <- Count_Total_mt$p.value

Count_Tumour_kras <- wilcox.test(s_wt$Count_Tumour, s_kras$Count_Tumour)
Count_Tumour_stk11 <- wilcox.test(s_wt$Count_Tumour, s_stk11$Count_Tumour)
Count_Tumour_krasstk11 <- wilcox.test(s_wt$Count_Tumour, s_krasstk11$Count_Tumour)
Count_Tumour_mt <- wilcox.test(s_wt$Count_Tumour, s_mt$Count_Tumour)

tumour_count_kras_vs_wt <- Count_Tumour_kras$p.value
tumour_count_stk11_vs_wt <- Count_Tumour_stk11$p.value
tumour_count_krasstk11_vs_wt <- Count_Tumour_krasstk11$p.value
tumour_count_mt_vs_wt <- Count_Tumour_mt$p.value

Count_Stroma_kras <- wilcox.test(s_wt$Count_Stroma, s_kras$Count_Stroma)
Count_Stroma_stk11 <- wilcox.test(s_wt$Count_Stroma, s_stk11$Count_Stroma)
Count_Stroma_krasstk11 <- wilcox.test(s_wt$Count_Stroma, s_krasstk11$Count_Stroma)
Count_Stroma_mt <- wilcox.test(s_wt$Count_Stroma, s_mt$Count_Stroma)

stroma_count_kras_vs_wt <- Count_Stroma_kras$p.value
stroma_count_stk11_vs_wt <- Count_Stroma_stk11$p.value
stroma_count_krasstk11_vs_wt <- Count_Stroma_krasstk11$p.value
stroma_count_mt_vs_wt <- Count_Stroma_mt$p.value

Count_Lymphoid_Aggregates_kras <- wilcox.test(s_wt$Count_Lymphoid_Aggregates, s_kras$Count_Lymphoid_Aggregates)
Count_Lymphoid_Aggregates_stk11 <- wilcox.test(s_wt$Count_Lymphoid_Aggregates, s_stk11$Count_Lymphoid_Aggregates)
Count_Lymphoid_Aggregates_krasstk11 <- wilcox.test(s_wt$Count_Lymphoid_Aggregates, s_krasstk11$Count_Lymphoid_Aggregates)
Count_Lymphoid_Aggregates_mt <- wilcox.test(s_wt$Count_Lymphoid_Aggregates, s_mt$Count_Lymphoid_Aggregates)

lymphoid_count_kras_vs_wt <- Count_Lymphoid_Aggregates_kras$p.value
lymphoid_count_stk11_vs_wt <- Count_Lymphoid_Aggregates_stk11$p.value
lymphoid_count_krasstk11_vs_wt <- Count_Lymphoid_Aggregates_krasstk11$p.value
lymphoid_count_mt_vs_wt <- Count_Lymphoid_Aggregates_mt$p.value

Count_White_Space_kras <- wilcox.test(s_wt$Count_White_Space, s_kras$Count_White_Space)
Count_White_Space_stk11 <- wilcox.test(s_wt$Count_White_Space, s_stk11$Count_White_Space)
Count_White_Space_krasstk11 <- wilcox.test(s_wt$Count_White_Space, s_krasstk11$Count_White_Space)
Count_White_Space_mt <- wilcox.test(s_wt$Count_White_Space, s_mt$Count_White_Space)

white_count_kras_vs_wt <- Count_White_Space_kras$p.value
white_count_stk11_vs_wt <- Count_White_Space_stk11$p.value
white_count_krasstk11_vs_wt <- Count_White_Space_krasstk11$p.value
white_count_mt_vs_wt <- Count_White_Space_mt$p.value

# Prevalence

Per10k_Total_kras <- wilcox.test(s_wt$Per10k_Total, s_kras$Per10k_Total)
Per10k_Total_stk11 <- wilcox.test(s_wt$Per10k_Total, s_stk11$Per10k_Total)
Per10k_Total_krasstk11 <- wilcox.test(s_wt$Per10k_Total, s_krasstk11$Per10k_Total)
Per10k_Total_mt <- wilcox.test(s_wt$Per10k_Total, s_mt$Per10k_Total)

total_prev_kras_vs_wt <- Per10k_Total_kras$p.value
total_prev_stk11_vs_wt <- Per10k_Total_stk11$p.value
total_prev_krasstk11_vs_wt <- Per10k_Total_krasstk11$p.value
total_prev_mt_vs_wt <- Per10k_Total_mt$p.value

Per10k_Tumour_kras <- wilcox.test(s_wt$Per10k_Tumour, s_kras$Per10k_Tumour)
Per10k_Tumour_stk11 <- wilcox.test(s_wt$Per10k_Tumour, s_stk11$Per10k_Tumour)
Per10k_Tumour_krasstk11 <- wilcox.test(s_wt$Per10k_Tumour, s_krasstk11$Per10k_Tumour)
Per10k_Tumour_mt <- wilcox.test(s_wt$Per10k_Tumour, s_mt$Per10k_Tumour)

tumour_prev_kras_vs_wt <- Per10k_Tumour_kras$p.value
tumour_prev_stk11_vs_wt <- Per10k_Tumour_stk11$p.value
tumour_prev_krasstk11_vs_wt <- Per10k_Tumour_krasstk11$p.value
tumour_prev_mt_vs_wt <- Per10k_Tumour_mt$p.value

Per10k_Stroma_kras <- wilcox.test(s_wt$Per10k_Stroma, s_kras$Per10k_Stroma)
Per10k_Stroma_stk11 <- wilcox.test(s_wt$Per10k_Stroma, s_stk11$Per10k_Stroma)
Per10k_Stroma_krasstk11 <- wilcox.test(s_wt$Per10k_Stroma, s_krasstk11$Per10k_Stroma)
Per10k_Stroma_mt <- wilcox.test(s_wt$Per10k_Stroma, s_mt$Per10k_Stroma)

stroma_prev_kras_vs_wt <- Per10k_Stroma_kras$p.value
stroma_prev_stk11_vs_wt <- Per10k_Stroma_stk11$p.value
stroma_prev_krasstk11_vs_wt <- Per10k_Stroma_krasstk11$p.value
stroma_prev_mt_vs_wt <- Per10k_Stroma_mt$p.value

Per10k_Lymphoid_Aggregates_kras <- wilcox.test(s_wt$Per10k_Lymphoid_Aggregates, s_kras$Per10k_Lymphoid_Aggregates)
Per10k_Lymphoid_Aggregates_stk11 <- wilcox.test(s_wt$Per10k_Lymphoid_Aggregates, s_stk11$Per10k_Lymphoid_Aggregates)
Per10k_Lymphoid_Aggregates_krasstk11 <- wilcox.test(s_wt$Per10k_Lymphoid_Aggregates, s_krasstk11$Per10k_Lymphoid_Aggregates)
Per10k_Lymphoid_Aggregates_mt <- wilcox.test(s_wt$Per10k_Lymphoid_Aggregates, s_mt$Per10k_Lymphoid_Aggregates)

lymphoid_prev_kras_vs_wt <- Per10k_Lymphoid_Aggregates_kras$p.value
lymphoid_prev_stk11_vs_wt <- Per10k_Lymphoid_Aggregates_stk11$p.value
lymphoid_prev_krasstk11_vs_wt <- Per10k_Lymphoid_Aggregates_krasstk11$p.value
lymphoid_prev_mt_vs_wt <- Per10k_Lymphoid_Aggregates_mt$p.value

Per10k_White_Space_kras <- wilcox.test(s_wt$Per10k_White_Space, s_kras$Per10k_White_Space)
Per10k_White_Space_stk11 <- wilcox.test(s_wt$Per10k_White_Space, s_stk11$Per10k_White_Space)
Per10k_White_Space_krasstk11 <- wilcox.test(s_wt$Per10k_White_Space, s_krasstk11$Per10k_White_Space)
Per10k_White_Space_mt <- wilcox.test(s_wt$Per10k_White_Space, s_mt$Per10k_White_Space)

white_prev_kras_vs_wt <- Per10k_White_Space_kras$p.value
white_prev_stk11_vs_wt <- Per10k_White_Space_stk11$p.value
white_prev_krasstk11_vs_wt <- Per10k_White_Space_krasstk11$p.value
white_prev_mt_vs_wt <- Per10k_White_Space_mt$p.value

total_output <- rbind(total_count_kras_vs_wt, total_count_stk11_vs_wt, total_count_krasstk11_vs_wt, total_count_mt_vs_wt,
                      tumour_count_kras_vs_wt, tumour_count_stk11_vs_wt, tumour_count_krasstk11_vs_wt, tumour_count_mt_vs_wt,
                      stroma_count_kras_vs_wt, stroma_count_stk11_vs_wt, stroma_count_krasstk11_vs_wt, stroma_count_mt_vs_wt,
                      lymphoid_count_kras_vs_wt, lymphoid_count_stk11_vs_wt, lymphoid_count_krasstk11_vs_wt, lymphoid_count_mt_vs_wt,
                      white_count_kras_vs_wt, white_count_stk11_vs_wt, white_count_krasstk11_vs_wt, white_count_mt_vs_wt,
                      total_prev_kras_vs_wt, total_prev_stk11_vs_wt, total_prev_krasstk11_vs_wt, total_prev_mt_vs_wt,
                      tumour_prev_kras_vs_wt, tumour_prev_stk11_vs_wt, tumour_prev_krasstk11_vs_wt, tumour_prev_mt_vs_wt,
                      stroma_prev_kras_vs_wt, stroma_prev_stk11_vs_wt, stroma_prev_krasstk11_vs_wt, stroma_prev_mt_vs_wt,
                      lymphoid_prev_kras_vs_wt, lymphoid_prev_stk11_vs_wt, lymphoid_prev_krasstk11_vs_wt, lymphoid_prev_mt_vs_wt,
                      white_prev_kras_vs_wt, white_prev_stk11_vs_wt, white_prev_krasstk11_vs_wt, white_prev_mt_vs_wt)
write.csv(total_output, "CD4_Collation_Results_Big_Tumours.csv")

