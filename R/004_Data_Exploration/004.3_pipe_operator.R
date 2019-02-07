#Overview of the Pipe Operator %>%
#While you aren't required to ever use the pipe operator with dplyr or tidyr, it can be very useful when trying to perform multiple operations/functions on a data set. The pipe operator will allow you to avoid either a long nested operation or doing a bunch of assignmets.
#
#In its most basic form, this is what an example of using %>% with dplyr looks like:
#
#The Data
df <- mtcars
library(dplyr)

#Using Nesting
library(dplyr)
arrange(sample_n(filter(df,mpg>20),size=5),desc(mpg))

#Using Multiple Assignments
library(dplyr)
a <- filter(df,mpg > 20)
b <- sample_n(a,size = 5)
c <- arrange(b,desc(mpg))
c

#Using the Pipe Operator
library(dplyr)
df %>% filter(mpg > 20) %>% sample_n(size = 5) %>% arrange(desc(mpg))