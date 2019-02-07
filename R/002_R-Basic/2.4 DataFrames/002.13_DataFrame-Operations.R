#Overview of Data Frame Operations
#We're going to do an overview of the following common actions:
# Creating Data Frames
# Importing and Exporting Data
# Getting Information about Data Frame
# Referencing Cells
# Referencing Rows
# Referencing Columns
# Adding Rows
# Adding Columns
# Setting Column Names
# Selecting Multiple Rows
# Selecting Multiple Columns
# Dealing with Missing Data
# Creating Data Frames

empty <- data.frame() # empty data frame

c1 <- 1:10 # vector of integers
c2 <- letters[1:10] # vector of strings
df <- data.frame(col.name.1=c1,col.name.2=c2)
df

# Output to csv
write.csv(df, file='some.file.csv')

#Importing and Exporting Data
d2 <- read.csv('some.file.name.csv')

#Getting Information about Data Frame
# Row and columns counts
nrow(df)
ncol(df)

# Column Names
colnames(df)

# Row names (may just return index)
rownames(df)

#Referencing Cells
#You can think of the basics as using two sets of brackets for a single cell, 
#and a single set of brackets for multiple cells. 
#For example:
vec <- df[[5, 2]] # get cell by [[row,col]] num
newdf <- df[1:5, 1:2] # get multiplt cells in new df
df[[2, 'col.name.1']] <- 99999 # reassign a single cell
df

#Referencing Rows
#Usually you'll use the [row,] format

# returns a data frame (and not a vector!)
rowdf <- df[1, ]
rowdf

# to get a row as a vector, use following
vrow <- as.numeric(as.vector(df[1,]))
vrow

#Referencing Columns
#Most column references return a vector:
cars <- mtcars
head(cars)

colv1 <- cars$mpg # returns a vector
colv1

colv2 <- cars[, 'mpg'] # returns vector
colv2

colv3<- cars[, 1] # a is int or string
colv3

colv4 <- cars[['mpg']] # returns a vector
colv4

# Ways of Returning Data Frames
mpgdf <- cars['mpg'] # returns 1 col df
head(mpgdf)

mpgdf2 <- cars[1] # returns 1 col df
head(mpgdf2)

#Adding Rows
# Both arguments are DFs)
df2 <- data.frame(col.name.1=2000,col.name.2='new' )
df2

# use rbind to bind a new row!
dfnew <- rbind(df,df2)
dfnew

#Adding Columns
df$newcol <- rep(NA, nrow(df)) # NA column
df

df[, 'copy.of.col2'] <- df$col.name.2 # copy a col
df

# Can also use equations!
df[['col1.times.2']] <- df$col.name.1 * 2
df

df3 <- cbind(df, df$col.name.1)
df3

#Setting Column Names
#Rename second column
colnames(df)[2] <- 'SECOND COLUMN NEW NAME'
df

# Rename all at once with a vector
colnames(df) <- c('col.name.1', 'col.name.2', 'newcol', 'copy.of.col2' ,'col1.times.2')
df

#Selecting Multiple Rows
first.ten.rows <- df[1:10, ] # Same as head(df, 10)
first.ten.rows

everything.but.row.two <- df[-2, ]
everything.but.row.two

# Conditional Selection
sub1 <- df[ (df$col.name.1 > 8 & df$col1.times.2 > 10), ]
sub1

sub2 <- subset(df, col.name.1 > 8 & col1.times.2 > 10)
sub2

#Selecting Multiple Columns
df[, c(1, 2, 3)] #Grab cols 1 2 3

df[, c('col.name.1', 'col1.times.2')] # by name

df[, -1] # keep all but first column

df[, -c(1, 3)] # drop cols 1 and 3

#Dealing with Missing Data
#Dealing with missing data is a very important skill to know when working with data frames!

any(is.na(df)) # detect anywhere in df
any(is.na(df$col.name.1)) # anywhere in col

# delete selected missing data rows
df <- df[!is.na(df$col), ]

# replace NAs with something else
df[is.na(df)] <- 0 # works on whole df
df$col[is.na(df$col)] <- 999 # For a selected column