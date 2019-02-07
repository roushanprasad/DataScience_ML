#Working with Vectors
"We can perform basics arithmetic with vectors and operations will occur on an 
element by element basis, for example:"
v1 <- c(1,2,3)
v2 <- c(5,6,7)

#Adding Vectors
v1+v2

#Subtracting Vectors
v1-v1
v1-v2

#Multiplying Vectors
v1*v2

#Dividing Vectors
v1/v2

#Functions with Vectors
"Let's learn about some useful functions that we can use with vectors! 
A function will be in the form:"
#name_of_function(input)

"Later on we will learn about creating our own functions, but R comes with a bunch 
of built-in functions that you will commonly use.

For example, if you want to sum all the elements in a numeric vector, 
you can use the sum() function."
#For example:
v1
sum(v1)

#We can also check for things like the standard deviation, variance, maximum element, 
#minimum element, product of elements:
v <- c(12,45,100,2)
# Standard Deviation
sd(v)

#Variance
var(v)

# Maximum Element
max(v)

#Minimum Element
min(v)

# Product of elements
prod(v1)
prod(v2)

#This is definitely not all of the functions available that are built in to R! 
#We will be using them over and over again throughout the course, 
#so don't worry too much about memeorizing them, you will naturally begin to remember 
#them more and more as you use them.

#Want a reference for all the functions available? Check out R Reference Card