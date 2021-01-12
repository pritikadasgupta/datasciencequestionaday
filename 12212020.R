# https://twitter.com/data_question

# What will the following two lines return in R?
isTRUE(c(TRUE, TRUE, TRUE, TRUE))
isFALSE(c(FALSE, FALSE, FALSE, FALSE))

#Answer: FALSE and FALSE
# Under the hood,both isTRUE() & isFALSE() 
# are checking 4 conditions among which 1 is 
# for the length of input,if the length of input
# != 1, the func returns FALSE. 

# These funcs r safer to use in if expressions,
# given u r not passing a vctr

isTRUE

isFALSE


