#Regular Expressions
#Regular expressions is a general term which covers the idea of pattern searching, typically in a string (or a vector of strings).

#For now we'll learn about two useful functions for regular expressions and pattern searching (we'll go deeper into this topic in general later on):

#grepl(), which returns a logical indicating if the pattern was found

#grep(), which returns a vector of index locations of matching pattern instances

#Let's see some quick examples:
text <- "Hi there, do you know who you are voting for?"
grepl('voting',text)
grepl('Hi',text)
grepl('Sammy',text)

v <- c('a','b','c','d')
grep('a',v)
grep('c',v)

#The Regular Expression guide can be found at: 
#https://www.regular-expressions.info/rlanguage.html
