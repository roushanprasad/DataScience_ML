#Dataframe Basics
#R actually has built in DataFrames for quick reference to play around with! 
#Check out the following dataframes that are built-in!

# Dataframe about states
state.x77

# US personal expense
USPersonalExpenditure

# Women 
women

#To get a list of all available built-in dataframes, use data()
data()

#Working with DataFrames
#You'll notice the states dataframe was really big, we can use the head() and tail() 
#functions to view the first and last 6 rows respectively. 
#Let's take a look:

# Quick variable assignment to save typing
states <- state.x77
head(states)
tail(states)

#DataFrames - Overview of information
# We can use the str() to get the structure of a dataframe, 
# which gives information on the structure of the dataframe and the data it contains, 
# such as variable names and data types. 
# We can use summary() to get a quick statistical summary of all the columns of a DataFrame, 
# depending on the data, this may or may not be useful!

# Statistical summary of data
summary(states)

# Structure of Data
str(states)

#Creating Data frames
#A quick note some people write Dataframe as one word, but in R its more commonly 
# written as two words: data frame. Not a very huge deal either way, 
# but if someone writes DataFrame they may be referring to a Python/pandas DataFrame, 
# so keep that in mind!

#We can create data frames using the data.frame() function and pass vectors as arguments, 
# which will then convert the vectors into columns of the data frame. 
# Let's see a simple example:
  
# Some made up weather data
days <- c('mon','tue','wed','thu','fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)

# Pass in the vectors:
df <- data.frame(days,temp,rain)
df

# Check structure
str(df)

summary(df)