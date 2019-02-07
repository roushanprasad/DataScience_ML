#R Lists Basics
#Lists will allow us to store a variety of data structures under a single variable. This means we could store a vecor,matrix, data frame, etc. under a single list. For example:

# Create a vector
v <- c(1,2,3,4,5)
# Create a matrix
m <- matrix(1:10,nrow=2)
# Create a data frame
df <- women
v
m
df

#Using list()
#We can use the list() to combine all the data structures:
li <- list(v,m,df)
li

#You will notice that the list() assigned numbers to each of the objects in the list, but we can also assign names in the following manner:
li <- list(sample_vec = v,sample_mat = m, sample_df = df)
# Ignore the "error in vapply", this won't occur in RStudio!
li

#Selecting objects from a list
#You can use bracket notation to show objects in a list, and double brackets to actually grab the objects form the list, for example:

# Single brackets
li[1] # By index
# By name
li['sample_vec']
# Notice the type!
class(li['sample_vec'])
# Use double brackets to actually grab the items
li[['sample_vec']]
# Can also use $ notation
li$sample_vec

#You can also index on top of this once you've selected the object from the list, for example:

li[['sample_vec']][1] # Second set of indexing

li[['sample_mat']]

li[['sample_mat']][1,]

li[['sample_mat']][1:2,1:2]

li[['sample_df']]['height']

#Combining lists
#Lists can hold other lists! You can also combine lists using the combine function c():

double_list <- c(li,li)
double_list

str(double_list)