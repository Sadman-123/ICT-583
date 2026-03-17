# my_dbinom <- function (k,n,p){
#     bin_coeff <- factorial(n) / (factorial(k) * factorial(n - k))
#     return (bin_coeff * p^k * (1-p)^(n-k))
# }
# print(my_dbinom(4,10,0.3))
# print(mean(rbinom(10000,10,0.3)>=5))
# print(1-pbinom(4,10,0.3))
# expected_val=25*0.3
# print(expected_val)
# A=mean(rbinom(10000,25,0.3))
# print(A)

# variance=25*0.3*0.7
# print(variance)
# B=var(rbinom(15000,25,0.3))
# print(B)

# A=rbinom(10000,1,0.6)
# B=rbinom(10000,1,0.1)
# print(mean(A | B))

# X1=rbinom(10000,1,0.45)
# X2=rbinom(10000,1,0.38)
# print(mean(X1 | X2))


m=1000*0.20#mean
# print(m)
v=200*(1-0.20)#variance
# print(v)
z=pnorm(190,m,sqrt(v))
print(z)
plot(hist(z,30))


cx=pbinom(190,1000,0.2)
print(cx)

