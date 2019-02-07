#Vector Basics
#Vectors are one of the key data structures in R which we wil be using. 
#A vector is a 1 dimensional array that can hold character, numeric, or logical data elements.

#We can create a vector by using the combine function c(). 
#To use the function, we pass in the elements we want in the array, 
#with each individual element separated by a comma.

#Let's see some examples:
# Using c() to create a vector of numeric elements
nvec <- c(1,2,3,4,5)
class(nvec)

# Vector of characters
cvec <- c('U','S','A')
class(cvec)

lvec <- c(TRUE,FALSE)
lvec
class(lvec)

#Note that we can't mix data types of the elements in an array, 
#R will convert the other elements in the array to force everything to be of the same data type. Later on we will learn about the list data structure that can take on multiple data types!
  
#Here's a quick example of what happens with arrays given different data types:

v <- c(FALSE,2)
v
class(v)

v <- c('A',1)
v
class(v)

#Vector Names
#We can use the names() function to assign names to each element in our vector. 
#For example, imagine the folowing vector of a week of temperatures:

temps <- c(72,71,68,73,69,75,71)
temps

#We know we have 7 temperatures for 7 weekdays, 
#but which temperature corresponds to which weekday? 
#Does it start on Monday, Sunday, or another day of the week? 
#This is where names() can be assigned in the following manner:

names(temps) <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')

#Now note what happens when we display the named vector:
temps

#We can now begin to see how the elements were assigned names! 
#We also don't have to rewrite the names vector over and over again,
#we can use simple use a variable name as a names() assignment, for example:
days <- c('Mon','Tue','Wed','Thu','Fri','Sat','Sun')
temps2 <- c(1,2,3,4,5,6,7)
names(temps2) <- days
temps2

#That's is for vector basics! Up next we will go over working with vectors.