#Creating a Matrix
"We've learned about vectors which allow us to store indexed elements. 
A matrix will allow us to have a 2-dimensional data structure which contains 
elements consisting of the same data type."

#Before we talk about the Matrix, we should show a quick tip for quickly creating 
#sequential numeric vectors, you can use the colon notation from slicing to create 
#sequential vectors:
v <- 1:10
v

#Great! Now, to create a matrix in R, you use the matrix() function. 
#We can pass in a vector into the matrix:
matrix(v)

#Notice how the output is displayed. Here we have a two-dimensional matrix which is 
#10 rows by 1 column. Now what if we want to specify the number of rows? 
#We can pass the parameter/argument into the matrix function called nrow which stands 
#for number of rows:
matrix(v,nrow=2)

#Now we have a 2 by 5 matrix. Notice that the nrow argument allows this to happen. 
#But how do we decide the fill order? We could have filed columns first (as we did above) 
#or filled out the rows first insequential order. 

#The byrow argument allows you to specify whether or not you want to fill out the 
#matrix by rows or by columns. For example:
matrix(1:12,byrow = FALSE,nrow=4)
matrix(1:12, byrow=TRUE, nrow=4)

#Creating Matrices from Vectors
# We can combine vectors to later input them into a matrix. 
# For example imagine the following vectors below of stock prices:

# not real prices
goog <- c(450,451,452,445,468)
msft <- c(230,231,232,236,228)
stocks <- c(goog,msft)
stock.matrix <- matrix(stocks,byrow=TRUE,nrow=2)
stock.matrix

#Naming Matrices
#Now that we have our matrix, it would be nice to name the rows and columns for reference. 
#We can do this similarly to the names() function for vectors, 
#but in this case we define colnames() and rownames(). So let's name our stock matrix:
days <- c('Mon','Tue','Wed','Thu','Fri')
st.names <- c('GOOG','MSFT')
colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names
stock.matrix