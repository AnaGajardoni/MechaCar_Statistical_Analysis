# MechaCar_Statistical_Analysis
Statistical Analysis Using R

## Overview


## Linear Regression to Predict MPG

As a first step, we need to analyse a set of 50 prototype MechaCars, which were created using multiple design specifications in order to identify the ideal vehicle performance. Metrics such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance were collected for each vehicle and the goal is to design a linear model that would predict the mpg according to the data collected. Which variables really influence mpg and which ones are not related?

As a first approach, a linear model (using R) was created to relate mpg to vehicle length, vehicle weight, spoiler angle, ground clearance and AWD (All-wheel-drive):

**lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar)**

As a result, we got:

![summary_lm_mpg](/resources/summary_lm_mpg.png)


vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD 

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. Then, you’ll write a short interpretation of the multiple linear regression results in the README.md.








Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils

An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population (5 pt)
An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population (10 pt)
There is a summary of the t-test results across all manufacturing lots and for each lot (5 pt)

