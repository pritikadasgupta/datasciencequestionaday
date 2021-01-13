
#Question 1:
# Can you index using a character vector? 
# For example what would the following code return?
x = c('a' = 1, 'b' = 2, 'c' = 4)
x[c('a', 'c')]
# [ and [[ allows the use of character vector for subsetting. The character vector is matched against the names of elements in the vector or list.

# Question 2:
# Logical vectors can also be used for indexing. 
# What would the following code return?
x = c(1, 2, 3, 4, 5)
x[x > 3]
# At first the expression x > 3 is evaluated, which returns a logical vector c(FALSE, FALSE, FALSE, TRUE, TRUE), the positions with TRUE are returned and the positions with FALSE aren't returned.

# Question 3:
# What happens when you try to index with a factor? 
# For example, what would the following code return?
x = 1:6
y = factor(c('a', 'b', 'c'))
x[y]
# Factors can also be used for indexing, although the result might not be something you would expect. Internally factors have numerical bindings, so when used for indexing, the factors are converted to their numerical bindings and then that numerical vector is used for indexing. So in this case, factor('a', 'b', 'c') is converted to c(1,2,3) behind the scenes, and then used for indexing.


# Question 4:
# What happens when the indexing key's length is greater than your vector? For example what would the following code returns?
x = c(1, 2, 4)
y = c(2, 2, 2, 2, 2)
x[y]
# When you are using a numerical vector for indexing, the elements of indexer are matched against the position of original vector. So the 2 in y is matched to the position 2 of x. The above example is basically c(x[2], x[2], x[2], x[2], x[2])


# Question 5:
# Once more, what happens when the indexing key's length is greater than your vector?
x = c(1, 2, 3)
y = seq(1, 5, by=1)
x[y]
# When you are using a numerical vector for indexing, the elements of indexer are matched against the position of original vector. So the 5 in y is matched to the position 5 of x and since x[5] doesn't exist NA is returned. If a particular position doesn't exist NA is returned.


# Question 6:
# Okay, last one, What happens when the indexing key's length is greater than your vector?
x = c(1, 2, 3)
y = c(TRUE, TRUE, FALSE, FALSE, TRUE)
x[y]




# Question 7:
# Now here's some twist, what happens when the indexing key's length is smaller than your vector?
x = 1:6
y = c(TRUE, FALSE, FALSE, NA)
x[y]


# Question 8:
x = list('a' = c(1,2), 'bbb' = c(4, 5,6))
x$b
# $ operator allows for partial name matching. So b is matched with bbb

# Question 9:
x = list('a' = c(1,2), 'bbb' = c(4, 5, 6))
x$b = 6
names(x)


# Question 10:
x = list('a' = c(1,2), 'bbb' = c(4, 5,6))
x[['b']]
x[['b',exact=FALSE]]

# Question 11:
x = list('a' = c(1,2), 'b' = c(3,4))
class(x[1])

# Question 12:
# What would be the class of the object returned by the following code?
mtcars[, 'cyl']
class(mtcars[, 'cyl'])

# Question 13:
# From the given list, you are trying to access hello, which of the following command would work?
z = list( a = list( b = 9, c = 'hello'), d = 1:5)
z[[c('a', 'c')]]
z$a$c
z[['a']]$c
#all of the above is the answer!
