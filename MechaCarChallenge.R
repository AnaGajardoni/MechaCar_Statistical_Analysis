# load dplyr
library(dplyr)

# load csv file
MechaCar_df <- read.csv('MechaCar_mpg.csv')

#5 Perform linear regression using the lm() function. In the lm() function, 
# pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 
# as the data parameter.

# perform linear regression on mpg x all other variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df)

# determine p-value and r-value for the model above
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df)) #generate summary statistics
cls