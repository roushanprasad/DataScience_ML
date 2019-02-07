#===================== for loops =======================================================
#A for loop allows us to iterate over an object (such as a vector) and 
#we can then perform and execute blocks of codes for every loop we go through. 
#The syntax for a for loop is:
#
#Syntax:
#for (temporary_variable in object){
#    # Execute some code at every loop
#}

#Let's start off by showing how to use a for loop with a vector:

#For loop over a vector
#We can think of looping through a vector in two different ways, 
#Way1: the first way would be to create a temporary variable with the use of the in keyword:
vec <- c(1,2,3,4,5)
for (temp_var in vec){
    print(temp_var)
}

#Way2: The other way would be to loop a numbered amount of times and then use indexing to continually grab from the vector:
for (i in 1:length(vec)){
    print(vec[i])
}

#For loop over a list
#We can do the same thing with a list:
#Way1:
li <- list(1,2,3,4,5)
for (temp_var in li){
    print(temp_var)
}
#Way2: 
for (i in 1:length(li)){
    print(li[[i]]) # Remember to use double brackets!
}

#For loop with a matrix
#We can similarly loop through each individual element in a matrix:
mat <- matrix(1:25,nrow=5)
mat
for (num in mat){
    print(num)
}

#Nested for loops
#We can nest for loops inside one another,however be careful when doing this, as every additional for loop nested inside another may cause a significant amount of additional time for your code to finish executing. 

#For example:
for (row in 1:nrow(mat)){
    for (col in 1:ncol(mat)){
        print(paste('The element at row:',row,'and col:',col,'is',mat[row,col]))
    }
}

