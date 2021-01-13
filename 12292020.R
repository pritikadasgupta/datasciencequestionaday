# https://twitter.com/data_question

# In #RStats what would the following return?
x = c(1, NA, NaN, Inf)
is.finite(x)

# corr ans: TRUE FALSE FALSE FALSE
# Inf & -Inf r +ve & -ve infinity whereas NaN means Not a Number. As the name indicates is.finite(), can be used to indicate which elements are finite (or infinite with is.infinite()).

is.finite(c(1,NA,NaN,Inf))
