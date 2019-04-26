#Guide to using dplyr
#We'll be covering the following functions:

#filter() (and slice())
#arrange()
#select() (and rename())
#distinct()
#mutate() (and transmute())
#summarise()
#sample_n() and sample_frac()

#Installing
#You can install dplyr using
install.packages('dplyr')

# Run it using
library(dplyr)

#Let's use some flight data for our examples. We'll download the nycflights13 data package:
install.packages('nycflights13',repos = 'http://cran.us.r-project.org')
#Use the library
library(nycflights13)
summary(flights)
summary(mtcars)

# Notice how large the data frame is:
dim(flights)

#1 filter():
#filter() allows you to select a subset of rows in a data frame. The first argument is the name of the data frame. The second and subsequent arguments are the expressions that filter the data frame:

#For example, we can select all flights on November 3rd that were from American Airlines (AA) with:
head(filter(flights,month==11,day==3,carrier=='AA'))

#This is a lot simpler than the normal way to do this with a dataframe:
head(flights[flights$month == 11 & flights$day == 3 & flights$carrier == 'AA', ])

#Again, the choice is yours, you may use nay approach as you like

#2 slice():
#We can select rows by position using slice()
slice(flights, 1:10)

#3 arrange():
#arrange() works similarly to filter() except that instead of filtering or selecting rows, it reorders them. 
#It takes a data frame, and a set of column names (or more complicated expressions) to order by. 
#If you provide more than one column name, each additional column will be used to break ties in the values of preceding columns:
head(arrange(flights,year,month,day,air_time))

#You can add desc() to arrange in descending order:
head(arrange(flights,desc(dep_delay)))

#4 select():
#Often you work with large datasets with many columns but only a few are 
#actually of interest to you. 
#select() allows you to rapidly zoom in on a useful subset using operations 
#that usually only work on numeric variable positions:
head(select(flights,carrier))

#5 rename()
#You can use rename() to rename columns, note this is not "in-place" you'll need to reassign the renamed data structures.
head(rename(flights,airline_car = carrier))

#6 distinct()
#A common use of select() is to find the values of a set of variables. This is particularly useful in conjunction with the distinct() verb which only returns the unique values in a table.
distinct(select(flights,carrier))

#7 mutate()
#Besides selecting sets of existing columns, 
#it's often useful to add new columns that are functions of existing columns. This is the job of mutate():
head(mutate(flights, new_col = arr_delay-dep_delay))

#8 transmute()
#Use transmute if you only want the new columns:
head(transmute(flights, new_col = arr_delay-dep_delay))

#9 summarise()
#You can use summarise() to quickly collapse data frames into single rows 
#using functions that aggregate results. 
#Remember to use na.rm=TRUE to remove NA values.
summarise(flights,avg_air_time=mean(air_time,na.rm=TRUE))

#10 sample_n() and sample_frac()
#You can use sample_n() and sample_frac() to take a random sample of rows: use sample_n() for a fixed number and sample_frac() for a fixed fraction.
sample_n(flights,10)
# .005% of the data
sample_frac(flights,0.00005) # USE replace=TRUE for bootstrap sampling