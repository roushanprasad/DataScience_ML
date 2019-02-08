#====================== Data Tables Exercise ====================================
#Exercise 1:
#Load the iris dataset ,make it a data.table and name it iris_dt 

#Exercise 2:
#Print mean of Petal.Length, grouping by first letter of 'Species' from iris_dt .
#Hint: You need to use substr() function.

#Exercise 3: 
#Install the library ggplot2
#load the library ggplot2

#Exercise 4:
#Load the diamonds dataset from ggplot2 package as 'dt' (a data.table).
#Find mean price for each group of 'cut' and 'color' .

#Exercise 5:
#Use the already loaded diamonds dataset 'dt' and print the last two carat value of each cut.










#==================================== Solution ====================================
#Solution 1:
iris_dt <- as.data.table(iris)
class(iris_dt)

#Solution 2: 
iris_dt[,mean(na.omit(Petal.Length)), by = substr(Species,1,1)]

#Solution 3: 
install.packages('ggplot2')
library(ggplot2)

#Solution 4:
dt <- as.data.table(diamonds)
class(dt)
dt[,mean(na.omit(price)),.(cut, color)]

#Solution 5:
dt[,tail(carat, 2), cut]


