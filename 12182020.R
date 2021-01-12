# https://twitter.com/data_question

# In R, suppose in a linear model u want to use 
# the - operator in its arithmetic sense 
# i.e. for the following formula instead of removing the c term, 
# u want to specify the difference of vector b frm c. 
# Which option is the right one to do so?
formula <- y ~ a + b - c


#Answer:
formula_compare <- y ~ a + I(b - c)

# When arithmetic expr involve operators which r also used symbolically 
# in model formulae, there can be confusion between arithmetic and symbolic 
# operator use.

# To avoid this confusion, the function I() can be used to bracket those 
# portions of a model formula where the operators are used in their arithmetic 
# sense. For example, in the formula y ~ a + I(b-c), the term b-c is to be 
# interpreted as the difference of b and c.