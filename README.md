# MechaCar_Statistical_Analysis
Statistical Analysis Using R

## Overview


## Linear Regression to Predict MPG

As a first step, we need to analyse a set of 50 prototype MechaCars, which were created using multiple design specifications in order to identify the ideal vehicle performance. Metrics such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance were collected for each vehicle and the goal is to design a linear model that would predict the mpg according to the data collected. Which variables really influence mpg and which ones are not related?

As a first approach, a linear model (using R) was created to relate mpg to vehicle length, vehicle weight, spoiler angle, ground clearance and AWD (All-wheel-drive):

**summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar))**

As a result, we got:

![Summary_lm_mpg](/resources/Summary_lm_mpg.png)

That means the linear regression comes to:

**mpg = 6.267 * vehicle_length + 0.001245 vehicle_weight + 0.06877 * spoiler_angle + 3.546 * ground_clearance -3.411 * AWD - 104**

Our p-value is 5.35e-11 - way smaller than our assumed significance of 0.05% showing that there is sufficient evidence to reject our null hypothesis, which means the slope of our linear model is not zero. 
Still according to the summary above, the variables vehicle length ahd ground clearance showed non-random amounts of variance to the model meaning they **DO** have a significant impact on mpg. On the other hand, the p-values of vehicle weight, spoiler angle and AWD are above 0.05 indicating there is a random amount of variance in the dataset observations.
The r^2 shows that 71% of our observations fit our linear model. Since we are talking about mpg and not safety items, I would say it is a good prediction. 

## Summary Statistics on Suspension Coils

The second part of this study covers the variance of suspension coils: based on the design specifications for MechaCar, the variance of the suspension coils must not exceed 100 pounds per square inch. In a first glance, the data seems to prove the coils are within the window specified given the PSI variance is 62.29 as the summary below shows:



However, when we study the variance per lot, our findings prove that there is something off with Lot 3 (variance of 1270.29)


The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils

An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population (5 pt)
An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population (10 pt)
There is a summary of the t-test results across all manufacturing lots and for each lot (5 pt)

