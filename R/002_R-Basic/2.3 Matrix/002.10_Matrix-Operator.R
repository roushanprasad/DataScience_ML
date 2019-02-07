#Matrix Operations
#Now that we've learned how to create a matrix, let's learn how to use functions and 
#perform operations on it!
  
#Run the following code to create the stock.matrix from earlier
# Prices
goog <- c(450,451,452,445,468)
msft <- c(230,231,232,236,228)

# Put vectors into matrix
stocks <- c(goog,msft)
stock.matrix <- matrix(stocks,byrow=TRUE,nrow=2)

# Name matrix
days <- c('Mon','Tue','Wed','Thu','Fri')
st.names <- c('GOOG','MSFT')
colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names

#Display
stock.matrix

#We can perform functions across the columns and rows, such as colSum:
colSums(stock.matrix)

#Doesn't really make sense for stocks, but just to show how it works
rowSums(stock.matrix)

#We can also do other mathematical operations, check this reference for all functions available.
rowMeans(stock.matrix)

#Binding columns and rows
#Let's go ahead and see how we can add columns and rows to a matrix, 
#we can use the cbind() to bind a new column, and rbind() to bind a new row.
#For example, let's bind a new row with Facebook stock:
FB <- c(111,112,113,120,145)
tech.stocks <- rbind(stock.matrix,FB)
tech.stocks

#Now let's add an average column to the matrix:
avg <- rowMeans(tech.stocks)
tech.stocks <- cbind(tech.stocks,avg)
tech.stocks




M <-  matrix(c(1:10),nrow=5,ncol=2)
M
dimnames=list(c('a','b','c','d','e'),c('A','B')))
