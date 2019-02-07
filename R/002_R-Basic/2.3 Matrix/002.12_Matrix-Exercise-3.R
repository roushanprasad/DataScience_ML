#R Matrix Exercise-3 & Solutions
#Exercise 1
#If
#M  <- matrix(c(1:10),nrow=5,ncol=2)
#dimnames(M)=list(c('a','b','c','d','e'),c('A','B')))
#What is the value of: M

#Exercise 2
#Consider the matrix M,
#What is the value of:
#M[1,]
#M[,1]
#M[3,2]
#M['e','A']

#Exercise 3
#Consider the matrix N
#N=matrix(c(1:9),nrow=3,ncol=3,)
#dimnames=list(c('a','b','c'),c('A','B','C')))
#What is the value of: diag(N)

#Exercise 4
#What is the value of: diag(4,3,3)
#Is matrix ?

#Exercise 5
#If M <- matrix(c(1:9),3,3,byrow=T,
#dimnames=list(c('a','b','c'),c('d','e','f')))
#What is the value of:
#rownames(M)
#colnames(M)

#Exercise 6
#What is the value of:
#upper.tri(M)
#lower.tri(M)
#lower.tri(M,diag=T)
#M[lower.tri(M)]
#M[lower.tri(M,diag=T)]

#Exercise 7
#Consider two matrix,
#M,N
#M <- matrix(c(1:9),3,3,byrow=T)
#N <- matrix(c(1:9),3,3)
#What is the value of:
#M*N

#Exercise 8
#Consider two matrix,
#M,N
#M <- matrix(c(1:9),3,3,byrow=T)
#N <- matrix(c(1:9),3,3)
#What is the value of:
#M%*%N

#Exercise 9
#Consider two matrix,
#M,N
#M <- matrix(c(1:9),3,3,byrow=T)
#N <- matrix(c(1:9),3,3)
#What is the value of:
#(M+N)^2

#Exercise 10
#Consider two matrix,
#M,N
#M <- matrix(c(1:9),3,3,byrow=T)
#N <- matrix(c(1:9),3,3)
#What is the value of:
#M/N