# library(tidyr)
# library(ggplot2)
# library(dplyr)

# n <- 50000

# sample_N01 <- rnorm(n,0,1)
# sample_N02 <- rnorm(n,0,3)
# sample_N03 <- rnorm(n,2,1)

# data <- data.frame(sample_N01, sample_N02, sample_N03)

# data %>% gather(key = distribution, value) %>% ggplot(aes(x = value, fill = distribution)) +geom_density(alpha = 0.3)


# data_pt <- rnorm(10000, 0, 1)
# hist(data_pt)

# sam <- mean(data_pt <= 2)
# print(sam) # sample

# tr_prob <- pnorm(2, 0, 1)
# print(tr_prob) # true

#Large Number Thorem
#sm_sample=sample(1:6,140,TRUE)
#xx=mean(sm_sample)
#print(sm_sample)
#print(xx)

#Central limit theorem 100 means 30 dixe
# lst=vector(length =1000)
# for(i in 1:1000){
#   lst[i]=mean(sample(1:6,size = 30,TRUE))
# }
# hist(table(lst))

#Normality Test

# install.packages("MASS")
# library("MASS")
# xx=cats$Bwt
# xy=rnorm(10000, 0, 1)
# hist(xy)
# ks.test(xy,"pnorm")






