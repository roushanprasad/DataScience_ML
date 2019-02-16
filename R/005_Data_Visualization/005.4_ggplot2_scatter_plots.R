#============= Exercise 1 ===========
#Scatter plots allow us to place points that let us see possible correlations between two features of a data set. Let's see how we can create them with ggplot!

#Problem 1: 
#Load the ggplot2 library. Use the dataframe 'mtcars' as 'df' and plot a scatter plot of 'wt' column on X axis and 'mpg' column on Y axis.
#Solution 1:
library(ggplot2)
df <- mtcars
pl <- ggplot(df, aes(x=wt, y=mpg))
pl2 <- pl + geom_point()
print(pl2)

#Problem 2:
#Customize the above graph. Color the points based on the number of cylinders (cyl) so that you can figure out the wt and mpg of cars with different number of cylinders.
#Solution 2:
pl <- ggplot(df, aes(x=wt, y=mpg))
pl2 <- pl + geom_point(aes(color=cyl))
print(pl2)

#Problem 3:
#The above plot looks good but the color gradient is a little confusing. We need to clearly figure out the difference between the number of cylinders. Try passing the 'cyl' as a factor in the color and see the difference
#Solution 3:
pl <- ggplot(df, aes(x=wt, y=mpg))
pl2 <- pl + geom_point(aes(color=factor(cyl)))
print(pl2)

#Problem 4: 
#Plot the above points to display the size of the points with respect to the number of cylinders. i.e. if a car has 8 cylinders its point representation should be bigger than the car having 4 cylinders. Also, make the points somewhat transparent.
#Solution 4:
pl <- ggplot(df, aes(x=wt, y=mpg))
pl2 <- pl + geom_point(aes(color=factor(cyl), size=factor(cyl), alpha=0.5))
print(pl2)

#Problem 5:
#Customize the graph further, by changing the shape of the points based onthe cylinders.
#Solution 5:
pl <- ggplot(df, aes(x=wt, y=mpg))
pl2 <- pl + geom_point(aes(shape=factor(cyl), color=factor(cyl), size=factor(cyl), alpha=0.5))
print(pl2)

#Problem 6: 
#Go back to the graph in Problem 1, and then color all the points based on 'hp', with highest 'hp' point painted as red color and lowest 'hp' painted as blue
#Solution 6:
pl <- ggplot(df, aes(x=wt, y=mpg))
pl2 <- pl + geom_point(aes(color=hp), size=4)+ scale_colour_gradient(high='red',low = "blue")
print(pl2)
