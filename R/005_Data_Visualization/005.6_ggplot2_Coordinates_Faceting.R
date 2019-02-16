#Coordinates and Faceting with ggplot2
#Learning how to deal with coordinates will allow us to size our plots correctly. Faceting will allow us to place several plots next to each other, these plots are usually related by the same dataset.
#================= Exercise 1 ============================
#Problem 1: 
#Load ggplot2 library, use 'mpg' inbuilt dataset and plot a scatter point for 'displ' on X axis and 'hwy' on Y axis
#Solution 1:
library(ggplot2)
pl <- ggplot(mpg, aes(x=displ, y=hwy))
pl2 <- pl + geom_point()
print(pl2)

#Problem 2: 
#Set the X axis and Y axis Limit to the above plot
#Note: You can use + scale_x_continuous and scale_y_continuous with an additional limits=c(low,high) argument to set the scale. A sometimes nicer way to do this is by adding + coord_cartesian() with xlim and ylim arguments and pass in numeric vectors. For example:
#Solution 2:
pl <- ggplot(mpg, aes(x=displ, y=hwy))
pl2 <- pl + geom_point()+ coord_cartesian(xlim=c(1,4),ylim=c(15,30))
print(pl2)

#Problem 3: 
#Customize the above plot further by fixing the Aspect ratio (default is 1:1). Remove the limit on Axes (X and Y axis)
#Solution 3:
pl <- ggplot(mpg, aes(x=displ, y=hwy))
pl2 <- pl + geom_point()+ coord_fixed(ratio = 1/3)
print(pl2)

#Problem 4: 
#Place the graphs side by side based on number of cylinders.
#Solution 4:
pl <- ggplot(mpg, aes(displ, cty)) 
pl2 <- pl + geom_point() + facet_grid(. ~ cyl)
print(pl2)

#Problem 5: 
#Facet the above plot on Y axis based on 'drv'
#Solution 5:
pl <- ggplot(mpg, aes(displ, cty)) 
pl2 <- pl + geom_point() + facet_grid(drv ~ .)
print(pl2)

#Or you can facet based on both 'drv' and 'cyl'
pl <- ggplot(mpg, aes(displ, cty)) 
pl2 <- pl + geom_point() + facet_grid(drv ~ cyl)
print(pl2)

