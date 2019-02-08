================================= Functions Assignment 1 ===============================
#Problem 1:
#Write a function to swap 2 numbers.
#Function can be names as 'num.swap'
#
#Problem 2: 
#Write a function to swap 2 numbers without using a third variable.
#Function can be named as 'num.swap.short'
#
#Problem 3:
#Write a function to sort a vector of numbers using bubble sort
#Function can be named as 'bubble.sort' 
#
#Problem 4:
#Using the above sort function (bubble.sort), write a function to find the median of values passed as a vector.
#Function can be named as 'my.median'
#
#Problem 5: 
#Write a function to find the maximum value in a vector.
#Function can be names as 'my.max'
#Hint: If you wish, you can use any of the above functions
#
#Problem 6:
#Write a function to find the minimum value in a vector.
#Function can be named as 'my.min' 
#Hint: If you wish, you can use any of the above functions
#
#Problem 7:
#Write a function to find the mean of a vector.
#Function can be named as 'my.mean'
#
#Problem 8:
#Write a function to find the mode(s) of a vector
#Function can be names as 'my.mode'
#
#Problem 9: 
#Write a Function to find the range of a vector
#Function can be named as 'my.range' 
#Hint: You may use the above function if you wish
#
#Problem 10:
#Write a function to find the 'population standard deviation' from the elements of a vector.
#Function can be named as 'my.sd'
#Hint: You may use above functions and inbuilt 'square root' function.

================================== Solutions ==================================
#Solution 1:
my.swap <- function(num1, num2){
  print(paste("Num1 is:", num1))
  print(paste("Num2 is:", num2))
  temp <- num1
  num1 <- num2
  num2 <- temp
  print("After Swapping")
  print(paste("Num1 is: ", num1))
  print(paste("Num2 is:", num2))
}

#Solution 2:
my.swap.short <- function(num1, num2){
  print(paste("Num1 is:", num1))
  print(paste("Num2 is:", num2))
  
  num1 <- num1 + num2
  num2 <- num1 - num2
  num1 <- num1 - num2
  print("After Swapping")
  print(paste("Num1 is: ", num1))
  print(paste("Num2 is:", num2))
  
}

#Solution 3:
#Note the inner loop can be looped for length-1 times
bubble.sort <- function(vector1){
  #print(paste("Vector Before Sorting: ", vector1))
  for (i in 1:length(vector1)) {
    for(i in 1:length(vector1)){
    
      if(i == length(vector1)){
        break
      }
      if(vector1[i] > vector1[i+1]){
        temp <- vector1[i]
       vector1[i] <- vector1[i+1]
        vector1[i+1] <- temp
      }
    }
  }
  #print(paste("Vector After Sorting: ", vector1))
  return(vector1)
}

#Solution 4:
my.median <- function(vector1){
  vector2 <- bubble.sort(vector1)
  vec.length <- length(vector2)
  temp <- vec.length %% 2
  mid.value <- vec.length / 2
  if(temp == 0){
    ele1 <- vector2[mid.value]
    ele2 <- vector2[mid.value + 1]
    med.ele <- (ele1 + ele2) / 2
  }else{
    med.ele <- vector2[ceiling(mid.value)]
  }
  return(med.ele)
}

#Solution 5: 
my.max <- function(vector1){
  vector2 <- bubble.sort(vector1)
  return(vector2[length(vector2)])
}

#Solution 6:
my.min <- function(vector1){
  vector2 <- bubble.sort(vector1)
  return(vector2[1])
}

#Solution 7: 
#In R you need not to mention the return statement explicitly. Whichever variable is there in the last statement, it will return that.
my.mean <- function(vector1){
  my.sum <- 0
  total.length <- length(vector1)
  for (i in 1:total.length ) {
    my.sum <- my.sum + vector1[i]
  }
  avg <- my.sum / total.length
  print(avg)
}

#Solution 8:
my.mode <- function(vector1){
  #Step 1: Sort the vector
  vector2 <- bubble.sort(vector1)
  #Step 2: Get Unique values from the above vector
  uniq.vec <- unique(vector2)
  #Step 3: Count No of unique elements
  uniq.count <- vector(length = 0)
  for (i in 1:length(uniq.vec)) {
    count <- 0
    for (j in 1:length(vector2)) {
      if(uniq.vec[i] == vector2[j]){
        count <- count + 1
      }
    }
    uniq.count <- c(uniq.count, count)
  }
  
  #Step 4: Get max value(s) from count
  max.count <- max(uniq.count)
  #Step 5: Get max element based on unique element max counts
  mode.vec <- vector(length = 0)
  for (i in 1:length(uniq.count)) {
    if(max.count == uniq.count[i]){
      mode.vec <- c(mode.vec,uniq.vec[i])
    }
  }
  return(mode.vec)
}

#Solution 9:
my.range <- function(vector1){
  max.value <- my.max(vector1)
  min.value <- my.min(vector1)
  range.value <- max.value - min.value
}

#Solution 10: 
#In population standard deviation we divide by 'N'
#In sample standard deviation we divide by 'N-1'
my.sd <- function(vector1){
  #Step 1: Find Mean of vector
  mean.value <- my.mean(vector1)
  #Step 2: Find Square of distance of each point 
  #from the mean i.e square(vect[i] - mean)
  square.distance.vec <- vector(length = 0)
  for (item in vector1) {
    dist <- abs(item - mean.value)
    sq.dist <- dist ^ 2
    square.distance.vec <- c(square.distance.vec,sq.dist)
  }
  #Step 3: Sum the distance, divide it with No of elements 
  #(length of original vector) also known as variance.
  sum.value <- sum(square.distance.vec)
  div.value <- sum.value / length(vector1)
  #Step 4: Calculate standard deviation (square_root(variance))
  sqrt.value <- sqrt(div.value)
  return(sqrt.value)
}
