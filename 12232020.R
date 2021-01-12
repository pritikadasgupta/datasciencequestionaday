# https://twitter.com/data_question

# Are loops slow in R and should you avoid them?
  
# To think of a vectorized solution can be hard and 
# often times it is easier to think of solution with for loops.

# Welcome to the for loops tweetorial, and 
# let's see how to write good for loops in R. (1/n)

# One of the most common use case is element wise operation,
# for example, the simple example, returning a square sequence from 1 to n. (2/n)

sequence_for = function(n){
  a = NULL
  for(i in 1:n) a[i] = i^2
  a
}
# This (above) function is slow if you compare with the
# vectorised solution, you can see the difference. 
# The reason for this slowness is copy on modify. 
# To create a bigger object, R first allocates space for the new 
# object and then copy the old object to the new object. (3/n)

microbenchmark::microbenchmark(
  "sequence_for" = sequence_for(100),
  "sequence_vect" = (1:100)^2
)

# How can you improve? pre-allocate the size, 
# initialize the result storing vector to the required length 
# (=number of intended calculations) (4/n)
sequence_for_len = function(n){
  a = numeric(n)
  for(i in 1:n) a[i] = i^2
  a
}

microbenchmark::microbenchmark(
  "sequence_for" = sequence_for(100),
  "sequence_for_len" = sequence_for_len(100),
  "sequence_vect" = (1:100)^2
)

# Vector solution is best, but if in case it doesn't work, 
# remember to pre-allocate the size.

# Other useful tip to improve is, if something can be 
# performed outside the loop, keep it outside, it does not 
# make sense to repeat the same calculation n times. (5/n)
inside = function(n){
  a = numeric(n)
  for(i in 1:n) a[i] = 1+ sqrt(i)
  a
}

outside = function(n){
  b = numeric(n)
  for(i in 1:n) b[i] = sqrt(i)
  1+b
}

microbenchmark::microbenchmark(
  "inside" = inside(10000),
  "outside" = outside(10000)
)

# Another common example is, when u have to bind dataframes. 
# Using rbind() or cbind() inside a for loop could be slow, 
# It is better to store the intermediate dataframes in a list 
# & combine them together outside the for loop. 
# (Also there are faster funcs for binding thn rbind) (6/n)
dframes_combine1 = function(template,...){
  to_combine = list(...)
  for(i in 1:length(to_combine)){
    template = rbind(template, to_combine[[i]])
  }
  template
}

dframes_combine2 = function(template,...){
  to_combine = list(template,...)
  template = do.call("rbind",to_combine)
}

template = data.frame(x=1,y=1)
df1 = data.frame(x=2,y=2)
df2 = data.frame(x=3,y=3)
df3 = data.frame(x=4,y=4)

microbenchmark::microbenchmark(
  "dframes_combine1" = dframes_combine1(template,df1,df2,df3),
  "dframes_combine2" = dframes_combine2(template,df1,df2,df3)
)

# "The lesson: don't avoid loops, simply to avoid loops". 
# Use profiler tools to identify the part of code which 
# r significantly slower & spend time on those critical 5% 
# bottlenecks then other 95% which only give minor gain & remember
# "premature optimization is the root of all evil"


# References: 
# https://r-project.org/doc/Rnews/Rnews_2008-1.pdf
# https://adv-r.hadley.nz/perf-improve.html
# https://youtu.be/uiEhmKN1RJo


