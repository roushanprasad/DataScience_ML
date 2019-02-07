#R Matrix Exercise-2 & Solutions
#Exercise 1
#Create three vectors  x,y,z  with integers and each vector has 3 elements. 
#Combine the three vectors to become a 3×3 matrix  A  where each column represents a vector. 
#Change the row names to  a,b,c.
#Name the matrix as 'A' 

#Exercise 2
#Check your result from Exercise 1, using  is.matrix(A). 
#It should return  TRUE, if your answer is correct. 
#Otherwise, please correct your answer. 

#Exercise 3
#Create a vector named 'vector.A' with 12 integers. Convert the vector to a 4*3 matrix and name it 'B' using matrix().
#Change the column names to  x, y, z  and row names to  a, b, c, d.
#The argument  byrow  in  matrix()  is set to be  FALSE  by default. Please change it to TRUE  and print  B  to see the differences.

#Exercise 4
#Obtain the transpose matrix of  B  named  tB .

#Exercise 5
#Multiply the matrix A with Matrix tb. Do we get any result ?
#Perform the matrix multiplication

#Exercise 6
#Extract a sub-matrix from  B  named 'subB' . It should be a 3×3 matrix which includes the last three rows of matrix  B  and their corresponding columns.

#Exercise 7
#Compute  3*A ,  A+subB ,  A-subB . Can we compute  A+B? Why?
================================== Solutions ========================
#Solution 1:
x <- 1:3
y <- 4:6
z <- 7:9
A <- cbind(x,y,z)
A

#Solution 2:
is.matrix(A)

#Solution 3:
vector.A <- 1:12
vector.A
B <- matrix(vector.A, nrow = 4)
B
colnames(B) <- c('x','y','z')
rownames(B) <- letters[1:4]

#Solution 4:
tb <- t(B)
tb

#Solution 5:
A %*% tb

#Solution 6:
subB <- B[2:dim(B)[1],1:dim(B)[2]]

#Solution 7: 
3*A
A+subB
A-subB
A + B #Gives Error
