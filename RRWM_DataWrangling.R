library(readr)
library(dplyr)
library(tidyr)

GSS_data <- gss_12M0025_E_2017_c_31_F1

#select desired columns
GSS_data <- select(GSS_data, c(SEX, AGEGR10, MARSTAT, VISMIN, EHG3_01B, TOTCHDC))

# remove missing data
GSS_data[GSS_data >= 96] <- NA

# recode sex: 1 = female and 0 = male

GSS_data$sex[GSS_data$SEX == 1] <- 0
GSS_data$sex[GSS_data$SEX == 2] <- 1

# recode minority status: 1 = minority and 0 = not minority

GSS_data$minority[GSS_data$VISMIN >= 2] <- 0 
GSS_data$minority[GSS_data$VISMIN == 1] <- 1 

# recode partner status, where 1 = has partner and 0 = no partner
# error defining MARSTAT, Yue has MARSTAT < 2 = 1, which discounts unions
GSS_data$partner[GSS_data$MARSTAT <= 2] <- 1
GSS_data$partner[GSS_data$MARSTAT >= 3] <- 0

# recode education, where 1 = high edu and 0 = low edu
GSS_data$education[GSS_data$EHG3_01B <= 3] <- 0
GSS_data$education[GSS_data$EHG3_01B >= 4] <- 1

# recode total children, where 1 = has child and 0 = no child
GSS_data$children[GSS_data$TOTCHDC >= 1] <- 1
GSS_data$children[GSS_data$TOTCHDC < 1] <- 0

# rename AGEGR10 to age_group
GSS_data <- rename(GSS_data, "age_group" = "AGEGR10")
