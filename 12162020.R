# https://twitter.com/data_question


# In R, the following formula is equivalent to?
# formula <- y ~ (a + b +c)^2
formula <- disp ~(hp + mpg + wt)^2
x = lm(disp ~(hp + mpg + wt)^2,data = mtcars)

#Answer:
# formula_compare <- y ~ a+b+c+a:b+a:c+b:c
attr(x$terms, "term.labels")

# In addition to +, there are other operators used in model formula.
# : is used for interaction
# - is used for removing terms
# * for crossing
# %in% for nesting
# ^ for crossing to specified degree.