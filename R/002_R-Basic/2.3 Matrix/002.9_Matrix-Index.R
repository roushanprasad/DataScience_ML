#Matrix Selection and Indexing
#Just like with vectors, we use the square bracket notation to select elements from a matrix. 
#Since we have two dimensions to work with, we'll use a comma to separate our indexing for 
#each dimension.

#So the syntax is then:
#example.matrix[rows,columns]
#where the index notation (e.g. 1:5) is put in place of the rows or columns . 
#If either rows or columns is left blank, then we are selecting all the rows and columns.

#Let's work through some examples:
  
#mat <- matrix(1:50,byrow=TRUE,nrow=5)
mat

# Grab first row
mat[1,]

#Grab first column
mat[,1]

# Grab first 3 rows
mat[1:3,]

# Grab top left rectangle of:
# 1,2,3
# 11,12,13
mat[1:2,1:3]

# Grab last two columns
mat[,9:10]

# Grab a center square of:
# 15,16
# 25,26
mat[2:3,5:6]