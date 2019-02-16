#============= Exercise 1 ===========
#Barplots are a useful way of displaying occurence counts when a histogram isn't quite what you're looking for! In ggplot2, there are two types of bar charts, determined by what is mapped to bar height. By default, geom_bar uses stat="count" which makes the height of the bar proportion to the number of cases in each group (or if the weight aethetic is supplied, the sum of the weights). If you want the heights of the bars to represent values in the data, use stat="identity" and map a variable to the y aesthetic.

#Problem 1: 
#Load ggplot2 library. Use the 'mpg' dataset and plot the bar plot for 'class' column in mpg dataset
#Solution 1:
library(ggplot2)
pl <- ggplot(mpg, aes(class))
pl2 <- pl + geom_bar()
print(pl2)

#Problem 2: 
# Bar charts are automatically stacked when multiple bars are placed at the same location. 
#Hence stack the bar chart with type of drive of the cars i.e. 'drv' column and see what you get.
pl <- ggplot(mpg, aes(class))
pl2 <- pl + geom_bar(aes(fill=drv))
print(pl2)

#Problem 3: 
#The above bar gives the counts of types of drives of cars in each class. In the same above example, represent the data in terms of percentage.
#Solution 3:
pl <- ggplot(mpg, aes(class))
pl2 <- pl + geom_bar(aes(fill=drv), position = "fill")
print(pl2)

#Problem 4: 
#Above two graps look good, but they are giving the information in the same bar. We need information in seperate bars for each drive types in each car category.
#See if you can get that.
pl <- ggplot(mpg, aes(class))
pl2 <- pl + geom_bar(aes(fill=drv), position = "dodge")
print(pl2)

