library(tidyverse)
#import data set
data1 <- read.csv(file.choose(),header=TRUE)
View(data1)
colnames(data1)
#line graph
x <- data1[1:20,"chol"]
plot(x,type="o",col="red",xlab="Geander",ylab="cho1",main="Heart details of male and female and cholesterol")

#ggplot pie
x <- data1[1:13,"oldpeak"]
labels <- data1[1:13,"oldpeak"]
pie(x,labels,main="oldpeak in Heart Disease",col=rainbow(length(x)))

#bar plot
B <- data1[1:20,"age"]
N <- data1[1:20,"cp"]
barplot(B,names.arg=N,xlab="Age",ylab="cp",main="Details of Heart Attack Disease  patient Ages and cp",col=c("Blue"))
#names.arg it is the vector of name appearing each bar

#box plot 
input_data <- data1[,c("age","cp")]
print(input_data)
boxplot(age~cp.data=data1,xlab="no of age",ylab="cp",main="Details of Heart Attack patient",col=c("green","purple"))

#scatter plot 
ss <- data1[1:303,c("trtbps","thalachh")]
print(ss)
plot(x=data1$trtbps,y=data1$thalachh,xlab = "Trtbps",ylab = "Thalachh",main = "Trtbps vs Thalachh",col="red")