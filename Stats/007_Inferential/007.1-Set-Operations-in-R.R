#========================== SET OPERATIONS ========================
x <- c(1,2,5)
y <- c(5,1,8,9)
#1. Union: Union of set x and set y
union(x,y)

#2. Intersect: Intersection of set x and set y
intersect(x,y)

#3. Set Difference: Set Difference between x anf y, consisting 
#of all the elements of x that are not in y 
setdiff(x,y)
setdiff(y,x)

#4. Set Equal: Test for equality between x and y
setequal(x,y)
setequal(y,x)
setequal(x, c(1,5,2))

#5. Membership testing: testing whether 'c' is an element of set y
c <- 5
c %in% y
c(3,4,5) %in% y

#6. Subset: Find if a is subset of b
all(x %in% y)
#e.g.
a <- c(1,5)
b <- c(1,2,3,4,5,6)
all(a %in% b)
#Important Note: If you are checking for subset, you can use all() to find 
#subset in set. However if you want to check wheter a vector (not set) is a 
#subvector (or kind of subset) of any other vector, then you should use isin()
#as all() function doesnot give correct result for repeated elements in vector.
#Note that I say repeated values in 'vector' and not in 'set' as set does not 
#deal with repreated values in it
#e.g.
x <- 1:10
y <- c(3,3,7)
all(y %in% x) #gives TRUE, because it does not consider 3 as two different 
#elements
#isin() is from package 'prob'
isin(x,y)     #gives FALSE, because 3 is not present twice in x

#6. Possible Subsets: Number of possible subsets of size k, choosen 
#from a set of size n
choose(5,2)

#--------------------- Examples ----------------------------
#If A = {4, 6, 8, 10, 12} B = {8, 10, 12, 14} C = {12, 14, 16} D = {16, 18}, 
a <- c(4, 6, 8, 10, 12)
b <- c(8, 10, 12, 14)
c <- c(12, 14, 16)
d <- c(16, 18)
#Find the following:
#1. a intersection b: 
intersect(a,b)
#2. b intersect c:
intersect(b,c)
#3. a intersect (c intersect d)
intersect(a, intersect(c,d))
#4. a intersect c
intersect(a,c)
#5. b intersect d
intersect(b,d)
#6. (a intersection b) union c
union(c, intersect(a,b))
#7. a intersection (b union d)
intersect(a, union(b,d))
#8. (a intersection b) union (b intersection c)
union(intersect(a,b), intersect(b,c))
#9. (a union d) intersect (b union c)
intersect(union(a,d), union(b,c))
#10. Is d subset of c
all(d %in% c)
