# https://twitter.com/data_question

# It is given tht `model` is a factor, whereas `cty`, `hwy` and `displ` are numeric vectors. 
# When using ggplot one of the option works while the other throws an error. Choose the correct option:
library(ggplot2)

#A
ggplot(mpg)+
  geom_point(aes(model,displ))+
  geom_point(aes(cty,hwy))
#B
ggplot(mpg)+
  geom_point(aes(cty,hwy))+
  geom_point(aes(model, displ))

# Options:
# A) Both A and B throws an error
# B) A works and B throws an error
# C) A throws an error and B works
# D) Both A and B works

# Answer: B
# If you set the first layer's x-axis with categorical variable
# and second layer's x-axis with continuous variable, the code will 
# run but the plot will not make sense. 
# But if you do the opposite, ggplot will throw an error. 






