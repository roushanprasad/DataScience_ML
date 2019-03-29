#R Data Tables
#data.table is an R package that provides an enhanced version of data.frames, which are the standard data structure for storing data in base R
#Some characteristic differences:
#1. Unlike data.frames, columns of character type are never converted to factors by default.
#2. Row numbers are printed with a : in order to visually separate the row number from the first column.
#3. When the number of rows to print exceeds the global option datatable.print.nrows (default = 100), it automatically prints only the top 5 and bottom 5 rows (as can be seen in the Data section). If you’ve had a lot of experience with data.frames, you may have found yourself waiting around while larger tables print-and-page, sometimes seemingly endlessly. You can query the default number like so:
getOption("datatable.print.nrows")

#1 ======================== Installing Library ================================================
#To install library
install.packages('data.table')
#To use library
library(data.table)
#To get the package details
citation('data.table')

#2 =================== Converting Existing Objects to Data Frame ===============================
#1.1: Using setDT() - data.table package
#It accepts only two type of arguments, dataframe type and list type
#Note that list elements must be of same dimensions if you are passing into this
data.table1 <- setDT(df1)
data.table1 <- setDT(list1)

#Important Note: 
#setDT is call by reference. i.e. it does not create any copy
#e.g. Once you load the data.table library and call the setDT() method 
#class(mtcars): it gives data.frame
#df <- mtcars	(Reference made for mtcars dataframe)
#setDT(df)		(Reference is passed to set as a data table)
#class(mtcars): It gives data.table as well as data.frame
#mtcars itself becomes the data.table 


#1.2: using as.data.table() - Data table package
#You can pass any type of appropriate object into it
data.table1 <- as.data.table(matrix1/dataframe1)

#3 ==================== Create Data Table ======================================================
data.table1 <- data.table(mtcars, keep.rownames = T)

#===============================================================================================
#For this topic we will use the 'hflights' data.
#Hence we will use hflights package
install.packages('hflights')
library(hflights)

#To view data sets you can use View() function. You can use this function with all data sets
View(hflights)
class(hflights)
head(hflights)
colnames(hflights)

#Convert it to data table
hflights <- as.data.table(hflights)

#--------------- Indexing & Slicing ---------------
#This differs a little from data frame access methods
#1. Using list():
hflights[1:3, 4:7]
hflights[,list(Year, DepDelay)]
hflights[1:3,list(Year, DepDelay)]
#2 Using '.' operator:
hflights[1:3, .(Year, DepDelay)]

#--------------- Filteration -----------------------
#To select columns and rows based on conditions, we use:
hflights[ArrDelay >= 45]
hflights[ArrDelay >= 45, Origin]

#Data Frame way (How we do the same in data frames): 
hflights[hflights$ArrDelay >= 45]

#--------------- Remove missing values --------------
#To omit missing values: 
hflights[,na.omit(ArrDelay)]

#Data Frame Way:
hflights[!is.na(hflights$ArrDelay), "ArrDelay"]
hflights[!is.na(hflights$ArrDelay),]

#--------------- add columns -------------------------
#To add a column to data table/ data frame
hflights[, total := ArrDelay + DepDelay]

#DataFrame way:
hflights$total1 <- hflights$ArrDelay + hflights$DepDelay

#--------------- remove/delete column -----------------
#To delete a colummn, we simply assign NULL to the column
hflights[, total := NULL]

#DataFrame way:
hflights[, !'total1']
hflights$total1 <- NULL

#---------------- select last row -----------------------
#To select last row use '.N. It means, specify the last index
hflights[.N,]

#DataFrame way:
hflights[nrow(hflights),]

#---------------- aggregate/ group function --------------
#Syntax is: 
# dataframe [, function on column, group by column]
hflights[,mean(na.omit(ArrDelay)), by=Month]
hflights[,mean(na.omit(ArrDelay)), .(Month, Year)]
hflights[,.(tail(ArrDelay,2)),Month] #Last 2 values of each month

#---------------- order/sorting --------------------------
hflights[order(Year)]
hflights[order(- Year)]
hflights[order(ArrDelay, - TaxiOut)]

#--------------- JOINS ------------------------------------
# To join two data tables, merge() function can be used:
#Suppose we have two data tables
x <- data.table(color=c('red','green','black'), num=1:3)
y <- data.table(color=c('red','green','orange'), size=c('small','medium','large'))

#Left Join:
left_table <- merge(x,y, by='color', all.x = T)
#Right Join:
right_table <- merge(x,y, by='color', all.y = T)
#Full Outer Join: 
full_outer_table <- merge(x,y, by='color', all.x=T, all.y = T)















