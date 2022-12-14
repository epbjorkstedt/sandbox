require(tidyverse)
require(mgcv)

x <- seq(10)
y <- x^2

data <- data.frame(x=x,
                   y=y)

ggplot(data) + geom_point(aes(x,y)) + scale_y_log10()


mod <- lm(log10(y)~x,data)

plot(mod)
