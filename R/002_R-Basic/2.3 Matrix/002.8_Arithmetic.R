#Matrix Arithmetic
#We can perform element by element mathematical operations on a matrix with a 
# scalar (single number) just like we could with vectors. 
# Let's see some quick examples:
mat <- matrix(1:50,byrow=TRUE,nrow=5)
mat

#Multiplication
2*mat

#Division (reciprocal)
1/mat

#Division
mat/2

#Power
mat ^ 2

#Comparison operators with matrices
#We can similarly perform comparison operations across an entire matrix to return a 
#matrix of logicals:
mat > 17

#Matrix Arithmetic with multiple matrices
#We can use multiple matrices with arithmetic as well, for example:
mat + mat
mat / mat

#Warning, big numbers!
mat ^ mat
mat*mat

#Matrix multiplication
#A quick side note on matrix multiplications. You can perform arithmetic multiplication 
#on an element by element basis using the * sign in R. You should note this is not the same 
#as Matrix Multiplication. If you are familiar with the mathematics behind this topic and 
#want to use R to perform true matrix multiplication, you can use the following:
mat2 <- matrix(1:9, nrow=3)
mat2

#True Matrix Multiplication
mat2 %*% mat2