#R Data Frames Exercise 3

#Question 1:
#Create the following Data Frame:
#	Id Letter 		x 				y
#1 	1 	a 		1.000000 	-20.000000
#2 	1 	b 		4.818182 	-18.181818
#3 	1 	c 		8.636364 	-16.363636
#4 	2 	a 		12.454545 	-14.545455
#5 	2 	b 		16.272727 	-12.727273
#6 	2 	c 		20.090909 	-10.909091
#7 	3 	a 		23.909091 	-9.090909
#8 	3 	b 		27.727273 	-7.272727
#9 	3 	c 		31.545455 	-5.454545
#10 4 	a 		35.363636 	-3.636364
#11 4 	b 		39.181818 	-1.818182
#12 4 	c 		43.000000 	0.000000
#Hint:
#Consider two vectors:
#Step1: Create a 'Id' vector having numbers repreated. Use 'rep()' function.
#Step2: Create a 'Letter' vector having letters repreated. Use 'rep()' function.
#Then use 'seq()' function to create the following: 
#x=seq(1,43,along.with=Id)
#y=seq(-20,0,along.with=Id)
#Create a data.frame from the above vectors


#Question 2:
#Create two data frame df1 and df2:
#> df1
#	Id 	Age
#1 	1 	14
#2 	2 	12
#3 	3 	15
#4 	4 	10
#> df2
#	Id Sex Code
#1 	1 	F 	a
#2 	2 	M 	b
#3 	3 	M 	c
#4 	4 	F 	d

#From df1 and df2 create M:
#	Id 	Age Sex Code
#1 	1 	14 	F 	a
#2 	2 	12 	M 	b
#3 	3 	15 	M 	c
#4 	4 	10 	F 	d
#Hint: You have to use 'merge()' function


#Question 3:
#Create a data frame df3:
#	id2 score
#1 	4 	100
#2 	3 	98
#3 	2 	94
#4 	1 	99
#From M and df3 create N:
#	Id 	Age Sex Code	score
#1 	1 	14 	F 	a 		99
#2 	2 	12 	M 	b 		94
#3 	3 	15 	M 	c 		98
#4 	4 	10 	F 	d 		100
#Hint: use 'by.x', 'by.y' in merge() function

#Question 4:
#Consider the previous one data frame N:
#1)Remove the variables Sex and Code
#2)From N, create a data frame:
#	values ind
#1 	1 		Id
#2 	2 		Id
#3 	3 		Id
#4 	4 		Id
#5 	14 		Age
#6 	12 		Age
#7 	15 		Age
#8 	10 		Age
#9 	99 		score
#10	94 		score
#11	98 		score
#12	100 	score
#Hint: Use stack()

#Question 5:
#For this exercise, we’ll use the (built-in) dataset 'trees'.
#1) Make sure the object is a data frame, if not change it to a data frame.
#2) Create a new data frame 'A':
#			Girth		Height 	Volume
#mean_tree 	13.24839 	76 		30.17097
#min_tree 	8.30000 	63 		10.20000
#max_tree 	20.60000 	87 		77.00000
#sum_tree 	410.70000 	2356 	935.30000

#Question 6:
#Consider the data frame 'A':
#1)Order the entire data frame by the first column.
#2)Rename the row names as follows: mean, min, max, tree

#Question 7:
#Create an empty data frame 'df' with column types:
#	Ints 	Logicals 	Doubles 	Characters
#

#Question 8:
#Create a data frame XY
#X=c(1,2,3,1,4,5,2)
#Y=c(0,3,2,0,5,9,3)
#> XY
#	X Y
#1 	1 0
#2 	2 3
#3 	3 2
#4 	1 0
#5 	4 5
#6 	5 9
#7 	2 3
#
#1)look at duplicated elements (rows) using a provided R function.
#Using that Grab out the duplicate elements (rows)
#Hint: duplicated()
#2) keeps only the uniques lines on XY using a provided R function.
#Hint: unique()




#===================== SOLUTIONS ===================================
#Solution 1:
Id <- rep(c(1,2,3,4), each=3)
Letter <- rep(letters[1:3], times=4)
x=seq(1,43,along.with=Id)
y=seq(-20,0,along.with=Id)
df <- data.frame(Id, Letter, x, y)
df

#Solution 2:
Id=c(1,2,3,4)
Age=c(14,12,15,10)
Sex=c('F','M','M','F')
Code=c('a','b','c','d')
df1=data.frame(Id,Age)
df2=data.frame(Id,Sex,Code)
M=merge(df1,df2,by='Id')
M

#Solution 3: 
id2=seq(4,1)
score=c(100,98,94,99)
df3=data.frame(id2,score)
N=merge(M,df3,by.x='Id',by.y='id2')
N
#Solution 4:
#1: 
N[,c("Sex")]=NULL
N[,c("Code")]=NULL
#2:
stack(N)

#Solution 5:
#1: 
is.data.frame(trees)
#2: 
mean_tree=apply(X = trees,MARGIN = 2,FUN = mean)
max_tree=apply(trees,2,max)
min_tree=apply(trees,2,min)
sum_tree=apply(trees,2,sum)
A=data.frame(mean_tree,min_tree,max_tree,sum_tree)
A <- t(A)
A

#Solution 6:
#1: 
A[order(A[,1])]
#2: 
row.names(A)=c('mean','min','max','sum')
#Aletrnate: You can also use rownames()
#Important Point:
#For a data frame, 'rownames' and 'colnames' eventually call 'row.names' and 'names' respectively.
 
 
#Solution 7:
df <- data.frame(Integers=integer(), Logicals=logical(),Doubles=double(),Characters=character())
df

#Solution 8:
X=c(1,2,3,1,4,5,2)
Y=c(0,3,2,0,5,9,3)
XY=data.frame(X,Y)
#1:
XY[duplicated(XY),]
#2:
unique(XY)