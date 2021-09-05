# Assignment: ASSIGNMENT 1 R/Python Refresher
# Name: Kalaikkovan, Vasanthakumar
# Date: 2021-09-04



##  1. Import, Plot, Summarize, and Save Data

# Set the working directory to the root of your DSC 520 directory
setwd("C:/Users/vasan/Predictive-Analytics/Week 01")

# importing the data
df<-read.csv("Dataset.csv")

##checking the head
head(df)

# summary for  Jan Variable
summary(df['Jan'])

# summary for Year variable
summary(df['Feb'])

# Histogram
hist(df$Jan,main="Histogram for Jan",
     xlab="Jan",
     col="darkmagenta")

#Box Plot
boxplot(df$Feb,main = "Box plot of Feb",
        xlab = "Unemployement",
        ylab = "Feb",
        col = "orange",
        border = "brown",
        horizontal = TRUE,
        notch = TRUE)


#Density plot
d<-density(df$Mar)
plot(d,main="Density plot of March")
polygon(d,col="red",border="blue")

#Save the data locally as csv
write.csv(df,"Export.csv", row.names = FALSE)



## 2. Explore Some Bivariate Relations

# Correlation plot
x<-df$Jan
y<-df$Feb

# Creating the plot
plot(x, y, pch = 19, col = "lightblue")

# Regression line
abline(lm(y ~ x), col = "red", lwd = 3)

# Pearson correlation
text(paste("Correlation:", round(cor(x, y), 2)), x = 25, y = 95)

#Cross Tabulation
library(gmodels)
CrossTable(df$Jan, df$Feb)

##3. Organize a Data Report

#Summary for each variable
summary(df$ï..Year)

summary(df$Jan)
summary(df$Feb)
summary(df$Mar)
summary(df$Apr)
summary(df$May)
summary(df$Jun)
summary(df$Jul)
summary(df$Aug)
summary(df$Sep)
summary(df$Oct)
summary(df$Nov)
summary(df$Dec)

#Structure
structure(df)

#Type of data elements
str(df)

#Results
par(mfrow=c(2,2))
hist(df$Jan)
hist(df$Feb)
hist(df$Mar)
hist(df$Apr)


# 1. For the last three years the unemployment in January was almost same and its continuous.
# 2. In Feb Month there is a missing in the continuity.
# 3. Similarly to the Jan there is almost same amount of unemployment in the initial stage and also at the end there is no continuity.
# 4. For April month there is a continuity through out all years but the frequency is not same.
       