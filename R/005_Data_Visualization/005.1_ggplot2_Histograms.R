#============= Exercise 1 ===========
#=== Refer 'state_real_estate_data.csv' 

#Problem 1: Install ggplot2 library, Load it. Read the 'state_real_estate_data.csv' file and store it in a data.frame/data.table df. Create a histogram of 'Home.Value' column from the dataset.
#Solution 1: 
install.packages('ggplot2')
library(ggplot2)
df <- read.csv('state_real_estate_data.csv')
#Optionally you can also read the csv file using
#df <- fread('state_real_estate_data.csv')
class(df)
View(df)
pl <- ggplot(df, aes(x=Home.Value))
pl2 <- pl + geom_histogram()
print(pl2)

#Problem 2:
#Customise the Histogram. Change the histogram border colors to red and fill the histogram with 'blue' color. Make the histogram somewhat transparent
#Solution 2:
pl <- ggplot(df, aes(x=Home.Value))
pl2 <- pl + geom_histogram(color='red', alpha=0.5, fill='blue')
print(pl2)

#Problem 3:
#Load the movies data set 'movies' that comes with ggplot2 package and select random 1000 rows from the dataset. Plot the histogram of 'rating' column
#Solution 3:
install.packages('ggplot2movies')
library(dplyr)
library(ggplot2)
library(ggplot2movies)
df <- sample_n(movies, 1000)

#Problem 4: 
#In the above problem, change the binwidth/bins to less so that you have more finer view of the details.
#Note: binwidth between 0 to 1 gives good results
#Note: bins when changed to 50 or more gives good result.
#Solution 4: 
df <- sample_n(movies, 1000)
pl <- ggplot(df, aes(x=rating))
pl2 <- pl + geom_histogram(bins=50)
print(pl2)

#Problem 5: 
#Customise the above histogram. Change the border colors of the histogram to red and fill the histogram with pink color. 
#Then change the x label of the graph to 'Movie Ratings' and y ratings to 'Occurences' and title of the graph to 'Movie Ratings'
#Solution 5:
pl <- ggplot(df, aes(x=rating))
pl2 <- pl + geom_histogram(bins=50, color='red', fill='pink') + xlab('Movie Ratings') + ylab('Occurences') + ggtitle(' Movie Ratings')
print(pl2)

#Problem 6: 
#Further Customise the above plot by changing the histogram border colors to red and changing the border lines type to dotted lines.
#Solution 6:
pl <- ggplot(df, aes(x=rating))
pl2 <- pl + geom_histogram(binwidth=0.1,color='blue',fill='pink',linetype='dotted') + xlab('Movie Ratings')+ ylab('Occurences')
print(pl2)

#Problem 7: Advanced Aesthetics
#We can add a aes() argument to the geom_histogram for some more advanced features. We won't go too deep into these, but ggplot gives you the ability to edit color and fill scales.
#Try This: 
pl <- ggplot(df, aes(x=rating))
pl2 <- pl + geom_histogram(binwidth=0.1,aes(fill=..count..)) + xlab('Movie Ratings')+ ylab('Occurences')
print(pl2)

#You can further edit this by adding the scale_fill_gradient() function to your ggplot objects:
# scale_fill_gradient('Label',low=color1,high=color2)
pl3 <- pl2 + scale_fill_gradient('Count',low='blue',high='red')
print(pl3)


