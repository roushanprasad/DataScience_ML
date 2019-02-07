#R Data Types
#Let's discuss some basic data types in R.

#Numerics¶
#Decimal (floating point values) are part of the numeric class in R
n <- 2.2

#Integers
#Natural (whole) numbers are known as integers and are also part of the numeric class
i <- 5

#Logical
#Boolean values (True and False) are part of the logical class. 
#In R these are written in All Caps.
t <- TRUE
f <- FALSE
t
f

#Characters
#Text/string values are known as characters in R. You use quotation marks to create 
#a text character string:
char <- "Hello World!"
char

# Also single quotes
c <- 'Single Quote Char'
c

#Checking Data Type Classes
#You can use the class() function to check the data type of a variable:
class(t)
class(f)
class(char)
class(c)
class(n)
class(i)

#Those are some of the basic data types in R. Next we will learn about one 
#of the main data building blocks of R, the vector!