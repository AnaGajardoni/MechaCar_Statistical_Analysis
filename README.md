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

![all_lots_summary](/resources/all_lots_summary.png)

However, when we study the variance per lot, our findings prove that there is something awkard with Lot 3 (variance of 1270.29)

![lot_summary](/resources/lot_summary.png)

The boxplot below clearly shows how heterogeneous each lot is by its outliers:

![boxplot_lot](/resources/boxplot_lot.png)

That being said, I would recommend further investigation on Lot 3. And more than that, because that lot does not meet the established criteria, we might ask whether those should be considered at all.

## T-Tests on Suspension Coils

Lastly, we were requested to compare all manufacturing lots against mean PSI of the population. Presuming the mean is 1500, we ran the t-test for all observations, then for each lot separately. 

The t-test ran for the entire dataset shows that p-value is 0.06 (higher than 0.05 being used for this research), thus, there is not enough evidence to support rejecting the null hypothesis.

![t_test_psi](/resources/t_test_psi.png)

Lot 1 has a p-value of 1, showing that there is no statistical difference between the sample mean and the presumed mean.

![t_test_psi_lot1](/resources/t_test_psi_lot1.png)

Lot 2 has a p-value of 0.61, showing again that the null hypothesis cannot be rejected. 

![t_test_psi_lot2](/resources/t_test_psi_lot2.png)

Lastly, Lot 3 has a p-value of 0.04, indicating that the null hypothesis should be rejected for this lot.

![t_test_psi_lot3](/resources/t_test_psi_lot3.png)

As already stated in analysis #2, maybe it would be a good idea to remove Lot 3 - either partially or entirely - from the study given the coils do not seem to meet the needed standard.

## Study Design: MechaCar vs Competition

### Metrics

Our recommendation would be to make models and collect the following data on the cars:

- Cost
- City Efficiency
- Highway Efficiency
- Horse Power
- Maintenance Cost
- Safety Rating
- MPG

This time, instead of basing the study on MPG, I would rather start with Safety Rating. 

### Hypothesis

- Null Hypothesis (Ho): MechaCar is priced correctly based on its safety items;
- Alternative Hypothesis (Ha): MechaCar is not priced correctly based on its safety items.

## Testing

For testing, we would make a multiple linear regression to determine what factors correlate or not to the safety ratings.
