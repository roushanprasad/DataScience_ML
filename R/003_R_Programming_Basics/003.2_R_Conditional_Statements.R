#======================= if, else, else if Statements =============================
#Here is the syntax for an if statement in R:
#Syntax1:
if (condition){
    # Execute some code
}

#Syntax2:
if (condition) {
  # Code to execute if true
} else {
  # Code to execute if above was not true
}

#Syntax3:
if (condition) {
  # Code to execute if true
} else if{
  # Some other Condition
} else{
  # Rest of the Condition
}

#Examples:
#1:
temp <- 100
if (temp > 80){
    hot <- TRUE
    
}

#2:
if (temp > 90){
    print("Hot outside!")
} else{
    print("Its not too hot today!")
}

#3:
temp <- 30
if (temp > 80){
    print("Hot outside!")
} else if(temp<80 & temp>50){
    print('Nice outside!')
} else if(temp <50 & temp > 32){
    print("Its cooler outside!")
} else{
    print("Its really cold outside!")
}