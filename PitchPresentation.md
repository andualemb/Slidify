---
title: "Developing Data Products - Course Project"
author: "Andualem Bekele"
highlighter: highlight.js
hitheme: tomorrow
job: October 4, 2018
subtitle: Pitch Presentation
framework: io2012
widgets: []
mode        : selfcontained # {selfcontained }

--- 

## Introduction


This presentation is created as part of the requirement for the Coursera course "Developing Data Products. The objectives of the assignment are to ensure sound understanding of the following concepts

  a. shiny to build data product application 
  
  b. slidify to create data product related pitch presentations

--- .class #id

## The Application

The application lets you select the best car for your trip based on specific parameters. The application enables a user to play freely with multiple parameters and perform interactive data analysis from a set of user specified criterias and recommend the best possible car for a trip.


User can specify the following parameters. 

1.  Selling price of gasoline (USD/gallon).
2.  Limit of money to be spent on gasoline.
3.  Desired travel distance in miles.
4.  Number of Cylinders
5.  Displacement
6.  Horsepower
7.  Transmission

--- .class #id

## How it Works
Once the user selects the preferred criteria from the list of available options, the best possible car is displayed in the result pane, which helps the user make the right decision for the trip.

The result will be dispalyed in a table. User can sort the results by the column with the feature that means the most to user by clicking the arrows at the top of the table and the best car for the trip will be the first car that is displayed on the table.

--- .class #id

## The Data
The data used in the app comes from the Motor Trend Car Road Tests (mtcars) dataset. The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models). A brief look into the the data is shown below:


```r
head(mtcars)
```

```
##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
```
