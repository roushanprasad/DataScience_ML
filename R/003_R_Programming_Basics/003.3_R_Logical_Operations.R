#============================== Logical Operators ==================================
#AND - &
#OR - |
#NOT - !

# Imagine the variable x
x <- 10
#Now we want to know if 10 is less than 20 AND greater than 5:
x < 20
x > 5
x < 20 & x > 5

#We can also add parenthesis for readability and to make sure the order of comparisons is what we expect:
(x < 20) & (x>5)
(x < 20) & (x>5) & (x == 10)

(10==1)
!(10==1)
# We can stack them (pretty uncommon, but possible)
!!(10==1)

#Use Case Example
#Here's a quick example of a real use case for these operators. Imagine the following data frame:
df <- mtcars
df

df[df['mpg'] >= 20,] 
# Notice the use of indexing with the comma

subset(df,mpg>=20) 
# Could also use subset

df[(df['mpg'] >= 20) & (df['hp'] > 100),]

#Logical Operators with Vectors
#We have two options when use logical operators, a comparison of the entire vectors element by element, or just a comparison of the first elements in the vectors

tf <- c(TRUE,FALSE)
tt <- c(TRUE,TRUE)
ft <- c(FALSE, TRUE)

tt & tf
tt | tf

#To compare first elements use && or ||
ft && tt
tt && tf
tt || tf
tt || ft

