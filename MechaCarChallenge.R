# load libraries
library(dplyr)
library(tidyverse)

#################################################################################################
# Deliverable 01
#################################################################################################

# load csv file
MechaCar <- read.csv('MechaCar_mpg.csv')

#5 Perform linear regression using the lm() function. In the lm() function, 
# pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 
# as the data parameter.

# perform linear regression on mpg x all other variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)

# determine p-value and r-value for the model above
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)) #generate summary statistics
#summary(lm(mpg ~ vehicle_length + ground_clearance, data=MechaCar_df)) #generate summary statistics

#################################################################################################
# Deliverable 02
#################################################################################################

# load csv file
SuspensionCoil <- read.csv('Suspension_Coil.csv')

# total summary 
total_summary <- SuspensionCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# total summary by lot
lot_summary <- SuspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')

# create boxplot of lots to show outliers
lot_psi <- SuspensionCoil %>% gather(key = "Manufacturing_Lot", value = "PSI")
lot_psi_summ <- SuspensionCoil %>% group_by(Manufacturing_Lot)
plt <- ggplot(lot_psi_summ, aes(x=Manufacturing_Lot, y=PSI))
plt + geom_boxplot()


#################################################################################################
# Deliverable 03
#################################################################################################

t.test(SuspensionCoil$PSI, mu=1500)

t.test((subset(SuspensionCoil, Manufacturing_Lot=="Lot1"))$PSI, mu=1500)
t.test((subset(SuspensionCoil, Manufacturing_Lot=="Lot2"))$PSI, mu=1500)
t.test((subset(SuspensionCoil, Manufacturing_Lot=="Lot3"))$PSI, mu=1500)


# 