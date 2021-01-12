# https://twitter.com/data_question

# Welcome to R inferno chapter 8...
# The output of the last command would be?
y = matrix(1:6,3,2)
x1 = data.frame(x=101:103,y=y)
x2 = data.frame(x=101:103)
x2$y = y
x1
x2
dim(x1)
dim(x2)

# Answer: 3 2
# Although the 2 dfs prints the same, but they r not the same. x1 includes y.1 & y.2 but x2 doesn't. 
# R inferno points out tht this is a useful feature,but yet to find a use case for that. If u hv one, please mention in comment.
# source: https://bit.ly/3mRQayH

