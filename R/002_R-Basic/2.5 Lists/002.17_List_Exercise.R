#Exercise 1
#If:
#p <- c(2,7,8), 
#q <- c("A", "B", "C")
#x <- list(p, q)
#then what is the value of x[2]?
#a. NULL
#b. "A" "B" "C"
#c. "7"

#Exercise 2
#If:
#w <- c(2, 7, 8)
#v <- c("A", "B", "C")
#x <- list(w, v)
#then which R statement will replace "A" in x with "K".
#a. x[[2]] <- "K" 
#b. x[[2]][1] <- "K" 
#c. x[[1]][2] <- "K"

#Exercise 3
#If a <- list ("x"=5, "y"=10, "z"=15), which R statement will give the sum of all elements in a?
#a. sum(a)
#b. sum(list(a))
#c. sum(unlist(a))

#Exercise 4
#If Newlist <- list(a=1:10, b="Good morning", c="Hi"), write an R statement that will add 1 to each element of the first vector in Newlist.

#Exercise 5
#If b <- list(a=1:10, c="Hello", d="AA"), write an R expression that will give all elements, 
#except the second element of the first vector (i.e. vector 'a') of list 'b'.

#Exercise 6
#Let x <- list(a=5:10, c="Hello", d="AA"), write an R statement to add a new item z = "NewItem" to the list x.

#Exercise 7
#Consider y <- list("a", "b", "c"), write an R statement that will assign new names "one", "two" and "three" to the elements of y.

#Exercise 8
#If x <- list(y=1:10, t="Hello", f="TT", r=5:20), write an R statement that will give the length of vector r of x.

#Exercise 9
#Let string <- "Grand Opening", write an R statement to split this string into two 
#and return the following output:
#[[1]]
#[1] "Grand"
#
#[[2]]
#[1] "Opening"
#Hint: use 'strsplit'

#Exercise 10
#Let:
#y <- list("a", "b", "c") and
#q <- list("A", "B", "C", "a", "b", "c").
#Write an R statement that will return all elements of q that are not in y, with the following result:
#
#[[1]]
#[1] "A"
#
#[[2]]
#[1] "B"
#
#[[3]]
#[1] "C"
#Hint: use 'setdiff'
#======================================= Solutions ================================================
#1: b
#2: b
#3: c
#4:
Newlist <- Newlist[[1]] + 1
#or
Newlist$a <- Newlist$a + 1

#5:
b <- list(a=1:10, c="Hello", d="AA")
b$a[-2]

#6:
x <- list(a=5:10, c="Hello", d="AA")
x$z <-"New Item"
x

#7:
y <- list("a", "b", "c")
names(y) <- c("one", "two", "three")
y

#8:
x <- list(y=1:10, t="Hello", f="TT", r=5:20)
length(x[['r']])
#Or
length(x$r)

#9:
string <- "Grand Opening"
a <- strsplit(string," ")
list(a[[1]][1], a[[1]][2])

#10:
y <- list("a", "b", "c")
q <- list("A", "B", "C", "a", "b", "c")
setdiff(q, y)