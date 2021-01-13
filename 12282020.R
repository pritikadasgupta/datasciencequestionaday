# https://twitter.com/data_question

# In ggplot, each component (like: geom_line()) is an object. 
# That means you can assign them to a variable (or create a function) and reuse them.
library(ggplot2)

points = geom_point(position="jitter",
                    color="steelblue",
                    size = 2)
ggplot(mpg,aes(cty,hwy))+points
ggplot(mpg,aes(displ,cty))+points

#Second question:
# What would the following return in #RStats?
FALSE && NA

# Answer
FALSE
# paraphrasing R docs: NA is a valid logical obj. If x or y hv NA, the result of  `x || y` or `x && y` will be NA where the outcome is ambiguous. In other words, NA & FALSE will be false as `&` operation returns TRUE if and only if both statements are TRUE


