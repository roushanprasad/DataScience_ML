#-------------------------- COrrelation Matrix ------------
cor(mtcars$mpg,mtcars$hp)
mat <- round(cor(mtcars), 2)
mat

mydata <- mtcars[, c(1,3,4,5,6,7)]
cormat <- round(cor(mydata),2)
cormat

#Method 1:
#install.packages("PerformanceAnalytics")
library("PerformanceAnalytics")
my_data <- mtcars[, c(1,3,4,5,6,7)]
chart.Correlation(my_data)

#Method 2:
#install.packages('corrr')
library(corrr)
network_plot(correlate(my_data), min_cor = 0.7)

#Method 3: 
#install.packages('psych')
library(psych)
pairs.panels(mydata, scale=TRUE, pch = 15, stars = TRUE, 
             cex.labels = 2, cex.cor = 3)

#Method 4:
#install.packages('corrplot')
corrplot.mixed(cor(mydata), order="hclust", tl.col="black")

#Method 5:
#install.packages('GGally')
library(GGally)
ggpairs(mydata)

#Method 6:
ggcorr(my_data,nbreaks = 10,palette='RdGy', label=TRUE, label_size=5,
       label_color = 'white')
