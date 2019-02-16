#============= Exercise 1 ===========
#Problem 1:
#Load ggplot2 library. Use dataset 'moves' that comes with 'ggplot2movies' package. If you do not have the packages then install those and load the same. 
#Plot the density graph for 'year' on X axis and 'rating' on Y axis.
#Solution 1:
library(ggplot2)
library(ggplot2movies)
df <- movies
pl <- ggplot(df, aes(x=year, y=rating))
pl2 <- pl + geom_density2d()
print(pl2)

#Problem 2: 
#Plot the same details mentioned in the above problem using bin2d plot
#Solution 2:
pl <- ggplot(df, aes(x=year, y=rating))
pl2 <- pl + geom_bin2d()
print(pl2)

#Problem 3:
# Customise the bin size
#Solution 3: 
pl <- ggplot(df, aes(x=year, y=rating))
pl2 <- pl + geom_bin2d(binwidth=c(2,1))
print(pl2)

#Problem 4: 
#Plot the same information mentioned in the problem 1 with hex plot.
#Solution 4:
pl <- ggplot(df, aes(x=year, y=rating))
pl2 <- pl + geom_hex()
print(pl2)

#Problem 5: 
#Fill the above hex plot with high value to be shown as red and low value to be shown as blue.
#Hint: Scale fill gradient
pl <- ggplot(df, aes(x=year, y=rating))
pl2 <- pl + geom_hex() + scale_fill_gradient(high='red',low='blue')
print(pl2)
