# https://twitter.com/data_question

library(ggplot2)

# With ggplot, it is known that one can use `ylim()` func to 
# alter the y-axis limits. I wanted to zoom in into a plot 
# so I decided to use it and wrote the following code, what is wrong with it?
base <- ggplot(mpg,aes(drv,hwy)) +
  geom_hline(yintercept = 28, colour = "red") + 
  geom_boxplot()

base+ylim(10,35)

# options:
# A) Nothing is wrong
# B) using ylim() removes the out of range values which can affect the boxplot (and it's stats)
# C) using ylim() the wrong way
# D) to zoom in both xlim() and ylim() must be provided

#Answer: B
# changing the y axis limits is not the same as zooming in with ggplot's ylim() func. it is better to use the xlim and ylim arguments of coord_cartesian() function.
# https://ggplot2-book.org/scale-position.html

#just learned about this! very off-topic
# install.packages("carbonate")
# library(carbonate)




