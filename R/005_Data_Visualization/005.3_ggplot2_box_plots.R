#============= Exercise 1 ===========
#Boxplots are convenient way of graphically depicting groups of numerical data through their quartiles. Box plots may also have lines extending vertically from the boxes (whiskers) indicating variability outside the upper and lower quartiles, hence the terms box-and-whisker plot and box-and-whisker diagram. Outliers may be plotted as individual points.

#Problem 1:
#Load the ggplot2 library, load dataset 'mtcars' in 'df'.
#Plot box plot for 'cyl' and 'mpg' columns in 'mtcars' dataset. Keep 'cyl' on X axis and 'mpg' on Y axis.
#Note: The common mistake we do is not passing the categorical variable as a 'factor'. Try passing the 'cyl' values in the below exercise as non-factor and see what you get.
#Solution 1: 
library(ggplot2)
df <- mtcars
pl <- ggplot(df, aes(x=factor(cyl), y=mpg))
pl2 <- pl + geom_boxplot()
print(pl2)

#Problem 2: 
#Flip the axes and see what you get.
#Solution 2:
pl <- ggplot(df, aes(x=factor(cyl), y=mpg))
pl2 <- pl + geom_boxplot() + coord_flip()
print(pl2)

#Problem 3: 
#Customise the above plot. 
#Revert back the axes and Fill the box plot based on a categorical variable 'cyl' so that we can see the boxes based on 'cyl' values.
#Solution 3:
pl <- ggplot(df, aes(x=factor(cyl), y=mpg))
pl2 <- pl + geom_boxplot(aes(fill=factor(cyl)))
print(pl2)

#Problem 4: 
#Undo the customization in the above plot (Simply remove the customization code) and fill the boxes with 'grey' and outline them with 'blue' color
#Solution 4:
df <- mtcars
pl <- ggplot(df, aes(x=factor(cyl), y=mpg))
pl2 <- pl + geom_boxplot(fill = "grey", color = "blue")
print(pl2)


