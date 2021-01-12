# https://twitter.com/data_question

# In R, there r multiple ways to index a data. 
# Suppose u r trying to extract element at [4,5]
# in mtcars dataset. 
# Which of the following method would be fastest?

# Options:

mtcars[4, 5]

mtcars$drat[4]

mtcars[[c(5, 4)]]

# similar time for all

#Answer: 
mtcars$drat[4]

microbenchmark::microbenchmark(
  "[4,5]" = mtcars[4,5],
  "$drat[4]" = mtcars$drat[4],
  "[[c(5,4)]]" = mtcars[[c(5,4)]]
)

# The following microbenchmark shows five
# ways to access a single value
# (the number in the bottom-right corner)
# from the built-in mtcars dataset. The 
# variation in performance is startling: the
# slowest method takes 30 times longer than the fastest. 
# There's no reason that there has to be such a huge difference in performance. 
# It's simply that no one has had the time to fix it.