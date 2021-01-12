# https://twitter.com/data_question


# In R, the following formula is equivalent to?
# formula <- y ~ a*b
formula <- disp ~(hp + mpg + wt)^2
x = lm(wt ~ cyl*mpg,data = mtcars)

#Answer:
# formula_compare <- y ~ a + b + a:b
attr(x$terms, "term.labels")
# In R, the models fit by lm & glm funcs r specified in a compact symbolic form using ~. An expression, y ~ model is interpreted as a specification tht the response y is modelled by a linear predictor specified symbolically by model.
