install.packages("ggplot2")

library(ggplot2)

head(mtcars, 10)

ggplot(data = mtcars, aes(x = disp, y = mpg)) + geom_point()

ggplot(data = mtcars) +
  geom_point(aes(x = disp, y = mpg, colour = as.character(am)))

ggplot(data = mtcars) +
  geom_point(aes(x = disp, y = mpg, colour = as.character(am),
                 size = cyl))


ggplot(data = mtcars) +
  geom_point(aes(x = disp, y = mpg), colour = "red", size = 5, 
             shape = 2)

head(diamonds)
install.packages("diamonds")

library(diamonds)
install.packages('ggplot2')
library('ggplot2')
diamonds

head(diamonds, 10)

cor(diamonds$price, diamonds$carat)
ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point()



cor(diamonds$price, diamonds$carat)
ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point(alpha = 0.1, aes(colour = cut)) + facet_wrap(~cut)


cor(diamonds$price, diamonds$carat)
ggplot(data = diamonds %>% sample_n(1000), aes(x = carat, y = price)) + 
  geom_point(alpha = 0.1, aes(colour = cut)) + 
  facet_wrap(~cut) +
  labs(x = "Peso(Quilates)", y = "Preço(U$)", colour = "Corte")

head(economics)

View(economics)

ggplot(economics, aes(x= date, y = unemploy)) + geom_line()
ggplot(economics, aes(x = date, y = uempmed)) + geom_line()

economics %>%
  mutate(
    unemploy = (unemploy - min(unemploy))/(max(unemploy) - min(unemploy)), 
    uempmed = (uempmed - min(uempmed))/(max(uempmed) - min(uempmed))
  ) %>%
  ggplot(aes(date, unemploy)) + geom_line()

library(magrittr)
library(tidyr)
economics %>%
  select(date, unemploy, uempmed) %>%
  gather(indice, valor, -date)


#colocar uma reta de regressão em um gráfico de dispersão

ggplot(data = diamonds %>% sample_n(100), aes(x = carat, y = price)) +
  geom_point() +
  geom_smooth(method = "lm", se = F)
  geom_abline(intercept + -2256.361, slope = 7756.426, color = "blue",
              linetype = "dashed", size = 5)
  
  