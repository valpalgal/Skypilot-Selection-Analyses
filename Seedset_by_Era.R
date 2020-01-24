## Analysis of skypilot seedset/plant and seedset/fruit using era as a predictor variable ##
## January 21, 2020 ##

#Importing data
MergedData <- read.csv("Skypilot Selection/Data/MergedData_Seedset.csv")

#Setting up libraries
library(plyr)
library(nlme)
library(car)
library(emmeans)
library(ggplot2)

qqnorm(MergedData$Total.Flowers)
qqline(MergedData$Total.Flowers)

qqnorm(sqrt(MergedData$No.TrmtSeeds))
qqline(sqrt(MergedData$No.TrmtSeeds))

ggplot(MergedData, aes(No.TrmtSeeds)) +
  geom_histogram(binwidth = 1, position = "dodge")

ggplot(MergedData, aes(No.SeedsPerFruit)) +
  geom_histogram(binwidth = 0.5, position = "dodge")

ggplot(MergedData, aes(No.SeedsPerFlower)) +
  geom_histogram(binwidth = 0.5, position = "dodge")