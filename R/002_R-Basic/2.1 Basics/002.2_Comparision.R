#Comparison Operators
#In R we can use comparison operators to compare variables and return logical values. Let's see some relatively self-explanatory examples:

#Greater Than
5 > 6
6 > 5

#We can also do element by element comparisons for two vectors:
v1 <- c(1,2,3)
v2 <- c(10,20,30)
v1 < v2

#Greater Than or Equal to
6 >= 6
6 >= 5
6 >= 7

#Less Than and Less than or Equal To
3 < 2
2 <= 2

#Be very careful with comparison operators and negative numbers! 
#Use spacing to keep things clear. An example of a dangerous situation:
var <- 1

# Comparing var less than negative 2
var < -2

# Accidentally reassigning var!
var <- 2
#Keep syntax highlighting in mind to help you avoid this mistake!

#Not Equal
5 != 2
5 != 5

#Equal
5 == 5
2 == 3

##########Vector Comparisons
#We can apply a comparison of a single number to an entire vector, for example:
v <- c(1,2,3,4,5)
v < 2
v == 3

#Later on we will see how we can use these vector comparisons to select parts of a vector!