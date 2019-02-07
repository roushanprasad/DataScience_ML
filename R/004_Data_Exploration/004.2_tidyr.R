#Guide to using tidyr
#Installing tidyr
install.packages('tidyr',repos = 'http://cran.us.r-project.org')
library(tidyr)
library(data.table)

#Data.frames versus data.tables
#All data.tables are also data.frames. Loosely speaking, you can think of data.tables as data.frames with extra features.
#1. data.frame is part of base R.
#2. data.table is a package that extends data.frames. Two of its most notable features are speed and cleaner syntax.

#However, that syntax for a data.table is different from the standard R syntax for data.frame while being hard for the untrained eye to distinguish at a glance. Therefore, if you read a code snippet and there is no other context to indicate you are working with data.tables and try to apply the code to a data.frame it may fail or produce unexpected results.

#So what are some of the practical differences? Here are a few:
#1. much faster and very intuitive by operations
#2. You won't accidentally print out a huge data.frame with the need to press Ctrl-C, data.table prevents this sort of accident
#3. faster and better file reading with fread
#4. the package also provides a number of other utility functions, like %between% or rbindlist that make life better
#5. pretty much faster for a lot of basic operations, since a lot of data.frame operations copy the entire thing needlessly

#Using tidyr
#We'll cover some of the most useful functions in tidyr. Including the following:

#1 gather()
#2 spread()
#3 separate()
#4 unite()

#Let's create some fake data that needs to be cleaned using tidyr
comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)
df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)
df

#1 gather():
#The gather() function will collapse multiple columns into key-pair values. The data frame above is considered wide since the time variable (represented as quarters) is structured such that each quarter represents a variable. To re-structure the time component as an individual variable, we can gather each quarter within one column variable and also gather the values associated with each quarter in a second column variable.

# Using Pipe Operator
head(df %>% gather(Quarter,Revenue,Qtr1:Qtr4))

# With just the function
head(gather(df,Quarter,Revenue,Qtr1:Qtr4))

#2 spread():
#This is the complement of gather(), which is why its called spread():
stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks
stocksm <- stocks %>% gather(stock, price, -time)
stocksm %>% spread(stock, price)
stocksm %>% spread(time, price)

#3 separate()
#Given either regular expression or a vector of character positions, separate() turns a single character column into multiple columns.
df <- data.frame(x = c(NA, "a.x", "b.y", "c.z"))
df

df %>% separate(x, c("ABC", "XYZ"))

#4 unite():
#Unite is a convenience function to paste together multiple columns into one.
head(mtcars)
unite_(mtcars, "vs.am", c("vs","am"),sep = '.')

# Separate is the complement of unite
mtcars %>%
  unite(vs_am, vs, am) %>%
  separate(vs_am, c("vs", "am"))
  
  