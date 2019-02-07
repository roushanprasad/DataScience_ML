#Vector Indexing and Slicing
#You can use bracket notation to index and access individual elements from a vector:
v1 <- c(100,200,300)
v2 <- c('a','b','c')
v1
v2

"Indexing works by using brackets and passing the index position of the element as a number. 
Keep in mind index starts at 1 (in some other programming languages indexing starts at 0)."

# Grab second element
v1[2]
v2[2]

#Multiple Indexing
"We can grab multiple items from a vector by passing a vector of index positions inside the 
square brackets. For example:"
v1[c(1,2)]
v2[c(2,3)]
v2[c(1,3)]

#Slicing
#You can use a colon (:) to indicate a slice of a vector. The format is:
#vector[start_index:stop_index]
#and you will get that "slice" of the vector returned to you. For example:
v <- c(1,2,3,4,5,6,7,8,9,10)
v[2:4]
v[7:10]

#Notice how the element st both the starting index and the stopping index are included.

#Indexing with Names
#We've previously seen how we can assign names to the elements in a vector, for example:
v <- c(1,2,3,4)
names(v) <- c('a','b','c','d')

#We can use those names along with the indexing brackets to grab individual elements 
#from the array!
v['a']
#Or pass in a vector of names we want to grab:

# Notice how we can call out of order!
v[c('a','c','b')]

#Comparison Operators and Selection
"As alluded to in the comparison operator lecture, we can use comparison operators to 
filter out elements from a vector. Sometimes this is referred to as boolean/logical masking, 
because you are creating a vector of logicals to filter out results you want. 
Let's see an example of this:"
v
v[v>2]

#Let's break this down to see how it works, we first get the vector v>2:
v>2

#Now we basically pass this vector of logicals through the brackets of the vector 
#and only return true values at the matching index positions:
v[v>2]

#We could also assign names to these logical vectors and pass them as well, for example:

filter <- v>2
filter
v[filter]

#Okay that is it for the basics of vectors! Up next is an exercise for review!