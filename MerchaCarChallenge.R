install.packages("tidyverse")
install.packages("jsonlite")
install.packages("pastecs")
library(tidyverse)
library (jsonlite)
library(pastecs)

mpg_table <- read.csv(file='/Users/anitapereda/Documents/dataAnalytics/R_analysis/MechaCar_mpg.csv',check.names=T,stringsAsFactors = F)

# Perform a multiple regression

head(mpg_table)

#dependent variable (mpg)

multiple_regression <- lm(mpg~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data = mpg_table)
print(multiple_regression)
summary(multiple_regression)

#super coil data set 
supercoil_table <- read.csv(file ='/Users/anitapereda/Documents/dataAnalytics/R_analysis/Suspension_Coil.csv')
head(supercoil_table)

summary(supercoil_table$PSI)
stat.desc(supercoil_table[3])

#suspension coil T-Test


