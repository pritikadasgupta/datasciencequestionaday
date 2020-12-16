# https://twitter.com/data_question

# Given the following code what do the two function calls return?

z <- FALSE

foo <- function(y = z) {
  z <- TRUE
  y
}

#function calls
foo()

foo(y = z)

# Answer: True and False