#Getting Help with R
#Aside from a google search or visiting StackOverflow, 
#there are some built-in ways to get help with R!
  
#Most R functions have online documentation.

#help(topic) documentation on topic ?topic id.
#help.search("topic") search the help system
#apropos("topic") the names of all objects in the search list matching the 
#regular expression "topic"

#help.start() start the HTML version of help
#str(a) display the internal structure of an R object
#summary(a) gives a "summary" of a, usually a statistical summary but it is 
#generic meaning it has different operations for different classes of a

#ls() show objects in the search path; specify pat="pat" to search on a pattern
#ls.str() str() for each variable in the search path
#dir() show files in the current directory
#methods(a) shows S3 methods of a
#methods(class=class(a)) lists all the methods to handle objects of class a