#============================= function =======================================
#Syntax:
#any_function_name <- function(param1, param2,....){
	#Code here
	
	#below return statement is only if you wish to 
	#return anything.
	
	#return(whatever you wish to return)
#}

# Simple function, no inputs!
hello <- function(){
    print('hello!')
}

helloyou <- function(name){
    print(paste('hello ',name))
}

add_num <- function(num1,num2){
    print(num1+num2)
}

#Default Values:
hello_someone <- function(name='Frankie'){
    print(paste('Hello ',name))
}

#Returning Values:
formal <- function(name='Sam',title='Sir'){
    return(paste(title,' ',name))
}

#Scope of function
#1: Local Scope
#2: Global Scope

v <- "I'm global v"
stuff <- "I'm global stuff"

fun <- function(stuff){
    print(v) 
    stuff <- 'Reassign stuff inside func'
    print(stuff)
}

print(v) 		#"I'm global v"
print(stuff) 	#"I'm global stuff"
fun(stuff) 		# "I'm global v"
				# "Reassign stuff inside func"
print(stuff) 	#"I'm global stuff"