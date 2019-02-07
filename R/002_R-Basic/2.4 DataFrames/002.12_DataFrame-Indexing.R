#Data Frame Selection and Indexing
# We've seen how to call built-in data frames and how to create them using data.frame() 
# along with vectors. Let's revisit our weather data frame and learn how to select elements 
# from within the dataframe using bracket notation:

# Some made up weather data
days <- c('mon','tue','wed','thu','fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)

# Pass in the vectors:
df <- data.frame(days,temp,rain)
df

#We can use the same bracket notation we used for matrices:
df[rows,columns]

# Everything from first row
df[1,]

#Everything from first column
df[,1]

# Grab Friday data
df[5,]

#Selecting using column names
#Here is where data frames become very powerful, we can use column names to select data 
#for the columns instead of having to remember numbers. 
#So for example:

# All rain values
df[,'rain']

# First 5 rows for days and temps
df[1:5,c('days','temp')]

#If you want all the values of a particular column you can use the dollar sign directly 
#after the dataframe as follows:
df.name$column.name

df$rain

df$days

#You can also use bracket notation to return a data frame format of the same information:
df['rain']

df['days']

#Filtering with a subset condition
# We can use the subset() function to grab a subset of values from our data frame based off 
# some condition. So for example, imagin we wanted to grab the days where it rained (rain=True), 
# we can use the subset() function as follows:
  
subset(df,subset=rain==TRUE)

#Notice how the condition uses some sort of comparison operator, in the above case ==. 
#Let's grab days where the temperature was greater than 23:
subset(df,subset= temp>23)

#Another thing to note is that we didn't pass in the column name as a character string, 
#subset knows that you are referring to a column in that data frame.

#Odering a Data Frame
# We can sort the order of our data frame by using the order function. 
# You pass in the column you want to sort by into the order() function, 
# then you use that vector to select from the dataframe. 
# Let's see an example of sorting by the temperature:
sorted.temp <- order(df['temp'])
df[sorted.temp,]

#Let's take a look at what sorted.temp actually is:
sorted.temp

#Ok, so we are just asking for those index elements in that order (by default ascending, 
#we can pass a negative sign to do descending order):
desc.temp <- order(-df['temp'])
df[desc.temp,]

#We could have also used the other column selection methods we learned:
sort.temp <- order(df$temp)
df[sort.temp,]