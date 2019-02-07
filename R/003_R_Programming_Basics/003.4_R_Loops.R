#================================== while loops =============================================
#while loops are a while to have your program continuously run some block of code until a condition is met (made TRUE). The syntax is:
while (condition){
    # Code executed here 
    # while condition is true
	
	#break condition
}

#break
#You can use break to break out of a loop.
#Note: Statement after break will not be executed

#Example:
x <- 0
while(x < 10){ 
    cat('x is currently: ',x)
    print(' x is still less than 10, adding 1 to x')
    # add one to x
    x <- x+1
    if(x==10){
        print("x is equal to 10!")
        break
        print("I will also print, woohoo!")
    }
}