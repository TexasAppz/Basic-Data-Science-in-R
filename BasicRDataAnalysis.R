# Getting Started in R and Data Analysis

# Command to see if R is working
sd(c(5,8,12))

# Basic Calculations
8*6
2^16

# Functions and Variables
sqrt(2)
abs(-65)
SquareRoot2 = sqrt(2)
SquareRoot2

# Vectors and Data Frames
CountryName = c("Brazil", "China", "India", "Switzerland", "USA")
CountryName
LifeExpectancy = c(74, 75, 66, 83, 79)
LifeExpectancy
CountryName[1]
LifeExpectancy[3]
seq(0,50,5)
CountryData = data.frame(CountryName, LifeExpectancy)
CountryData
str(CountryData)
CountryData$Population = c(199000, 1390000, 1240000, 7997, 318000)
str(CountryData)

# Loading CSV Files
WHO = read.csv("WHO.csv")
str(WHO)

# Subsetting Data
WHOEurope = subset(WHO, Region == "Europe")

# Basic Data Analysis
mean(WHO$Under15)
sd(WHO$Under15)
summary(WHO)
summary(WHO$Under15)
median(WHO$Under15)
which.min(WHO$Under15)
WHO$Country[86]
which.max(WHO$Under15)
WHO$Country[124]

# Plots
plot(WHO$GNI, WHO$FertilityRate)
Outliers = subset(WHO, GNI > 10000 & FertilityRate > 2.5)
hist(WHO$CellularSubscribers) # histogram is an estimate of the probability density function of a random variable
boxplot(WHO$LifeExpectancy ~ WHO$Region)
boxplot(WHO$LifeExpectancy ~ WHO$Region, ylab = "Life Expectancy", main = "Life Expectancy of Countries by Region")
# thick line is median, box is 1st quartile to 3rd quartile 
median(WHOEurope$LifeExpectancy)
quantile(WHOEurope$LifeExpectancy,c(0.25,0.75))
# interquartile range or IQR is the difference between 3rd and 1st quartile.
# by default, whiskers in R are Q1- 1.5*IQR,Q3+1.5*IQR (never more than 1.5*IQR from the box)
# if data points fall outside the whiskers, they are shown by circles (they are outlier points)
# if no outliers, whiskers stop at last data point.

# Summary Tables
table(WHO$Region) # counting
table(WHO$LifeExpectancy > 75) #true/false statement
table(WHO$Region, WHO$LifeExpectancy > 75)
tapply(WHO$Over60, WHO$Region, mean)
tapply(WHO$LiteracyRate, WHO$Region, min)
tapply(WHO$LiteracyRate, WHO$Region, min, na.rm=TRUE)

