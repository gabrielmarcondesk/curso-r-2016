library(magrittr)
library(dplyr)
library(ggplot2)

mtcars

ajuste_lm <- lm(mpg ~ wt, data = mtcars)

coeficientes <- coef(ajuste_lm)

ggplot(mtcars) +
  geom_point(aes(x = wt, y = mpg)) +
  geom_abline(intercept = coeficientes[1],
              slope = coeficientes[2])


ajsute_lm <- lm(mpg ~wt, data = mtcars)
ajuste_lm

y = a + b * x

a = 37.285
b = -5.344

mtcars[ "Fiat 128",]

#---- ientificando outliers

res <- residuals(ajuste_lm)

mtcars %>%
  add_rownames %>%
  filter(res %>% abs > 6)

ajuste_lm_completo <- lm(mpg ~ ., data = mtcars)
step(ajuste_lm_completo, direction = "forward")


install.packages("tree")

library(tree)

ajuste_tree <- tree(factor(am) ~ wt, data = mtcars)
summary(ajuste_tree)

plot(ajuste_tree)
text(ajuste_tree, pretty = 0)