library(ggplot2)
# str(mtcars)#continus data fact
# ggplot(mtcars, aes(x=factor(cyl), y=mpg,shape=factor(disp))) +
#   geom_point(shape=24,color='blue',fill='orange')




# str(mtcars)
# ggplot(mtcars, aes(factor(cyl), mpg, color = factor(am))) +
#   geom_jitter(alpha = 0.5, shape=16)

awesome_color = '#575575'

ggplot(economics, aes(x = date,y=uempmed/pop)) +
  geom_line(position = "dodge") +
  theme(legend.position = c(0.12,0.44),axis.title = element_blank(),panel.grid = element_blank())

str(economics)

