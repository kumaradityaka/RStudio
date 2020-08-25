# Loop Functions

# Useful for looping on the command line.

# lapply(): Loop over a list and evaluate a function on each element
# 
# sapply(): Same as lapply but try to simplify the result
# 
# apply(): Apply a function over the Matrix
# 
# tapply(): Apply a function over subsets of a vector
# 
# mapply(): Multivariate version of lapply

#lapply()

# The lapply() function does the following simple series of operations:

# it loops over a list, iterating over each element in that list
# it applies a function to each element of the list (a function that 
# you specify) and returns a list (the l is for "list").

?rnorm()
x <- list(a = 1:5, b = rnorm(10))
lapply(x, median)

?runif()
x <- 1:4
lapply(x, runif)

#str(x)
# runif()

#runif() is generates uniformly distributed random variables

#saaply() The sapply() function behaves similarly to lapply(); 
# the only real difference is in the return value. 
# sapply() will try to simplify the result of lapply() if possible. 
# Essentially, sapply() calls lapply() on its input and then applies
# the following algorithm:
#   
# If the result is a list where every element is length 1, then a vector is returned
# If the result is a list where every element is a vector of the same length (> 1), a matrix is returned.
#If it can't figure things out, a list is returned


x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(x, mean)

# O/p of lapply is list , so sapply will return a vector
sapply(x, mean)

#apply() can be used to apply a function to a matrix.

mat_new <- matrix(data=cbind(rnorm(20, 0), rnorm(20, 2), rnorm(20, 5)), nrow=20, ncol=3)
mat_new

#Let's apply apply function to calculate the row-wise means
apply(mat_new, 1, mean)

#Let's apply apply function to calculate the column-wise means
apply(mat_new, 2, mean)

# Let's find out how many negative numbers each column has got
apply(mat_new,2, function(y) length(y[y<0]))

#Let's get the mean of the positive values in the matrix
apply(mat_new, 2, function(y) mean(y[y>0]))

#data_apply <- matrix(c(1:20, 11:30), nrow = 5, ncol = 4)
#data_apply
# How can we use the apply function to find the mean/median of each row as follows

#tapply() : tapply() basically splits the array based on any data, 
#usually at factor level and then applies the functions to it.

library(datasets)
mtcars
tapply(mtcars$wt, mtcars$cyl, median)

# The 'tapply' function first groups the cars together based on the 
# number of cylinders they have and then calculate the median weight 
# for each group.

#mapply() : 'mapply()' is a multivariate version of sapply. 
#It will apply the specified function to the first element 
#of each argument first, followed by the second element, and so on

x <- 1:10
y <- 11:20
mapply(sum, x, y)









