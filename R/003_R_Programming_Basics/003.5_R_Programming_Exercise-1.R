#=============== Functions Exercise ============================
#Example: Create a function that takes in a name as a string argument, and prints out "Hello name"
#Solution:
hello_you <- function(name){
    print(paste('Hello',name))
}

#Question 1:
#Create a function that will return the product of two integers.

#Question 2:
#Create a function that accepts two arguments, an integer and a vector of integers. 
#It returns TRUE if the integer is present in the vector, otherwise it returns FALSE. 
#Make sure you pay careful attention to your placement of the return(FALSE) line in your function!

#Question 3:
#Create a function that accepts two arguments, an integer and a vector of integers. 
#It returns the count of the number of occurences of the integer in the input vector.

#Question 4:
#We want to ship bars of aluminum. We will create a function that accepts an integer representing the requested kilograms of aluminum for the package to be shipped. To fullfill these order, we have small bars (1 kilogram each) and big bars (5 kilograms each). Return the least number of bars needed.

#For example, a load of 6 kg requires a minimum of two bars (1 5kg bars and 1 1kg bars). 
#A load of 17 kg requires a minimum of 5 bars (3 5kg bars and 2 1kg bars).

#Question 5:
#Create a function that accepts 3 integer values and returns their sum. 
#However, if an integer value is evenly divisible by 3, then it does not count towards the sum. 
#Return zero if all numbers are evenly divisible by 3. 
#Hint: You may want to use the append() function.

#Question 6:
#Create a function that will return TRUE if an input integer is prime. 
#Otherwise, return FALSE. You may want to look into the any() function. 



#================================= SOLUTIONS ==========================
#Solution 1:
prod <- function(num1,num2){
    return(num1*num2)
}

#Solution 2:
num_check <- function(num,v){
    for (item in v){
        if (item == num){
            return(TRUE)
        }
    }
    return(FALSE)
}

#Solution 3:
num_count <- function(num,v){
    count = 0
    for (x in v){
        if (x == num){
            count = count + 1
        }
    }
    return(count)
}

#Solution 4:
bar_count <- function(pack){
    amount_of_ones = pack %% 5
    amount_of_fives = (pack - amount_of_ones)/5
    return(amount_of_ones+amount_of_fives)
}

#Solution 5:
summer <- function(a, b, c){
    out <- c(0)
    if (a %% 3 != 0){
        out <- append(a,out)
    }
    if (b %% 3 != 0){
        out <- append(b,out)
    }
    if (c %% 3 != 0){
        out <- append(c,out)
    }
    return(sum(out))       
}

#Solution 6:
prime_check <- function(num) {
   if (num == 2) {
      return(TRUE)
   } else if (any(num %% 2:(num-1) == 0)) {
      return(FALSE)
   } else { 
      return(TRUE)
   }
}

#Or you can do it this way as well:
# Alternatively:
prime_check <- function(num){
  # Could put more checks for negative numbers etc...
  if (num == 2) {
    return(TRUE)
  }
  for (x in 2:(num-1)){
      
    if ((num%%x) == 0){
      return(FALSE)
    }
  }
  return(TRUE)
  
}

