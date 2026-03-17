#rbinom(10,1,0.3)
# rbinom(100,10,0.3)


# rbinom(15,1,0.4)
# rbinom(50,3,0.35)


# dbinom(2, size=10, prob=0.3)
# n=10
# k=2
# prob=0.3
# Fc=factorial(n)/(factorial(k)*factorial(n-k))
# print(Fc*prob^k*(1-prob)^(n-k))

#dbinom(2,5,0.18)


# mean(rbinom(100000, 10, .3) >= 5)
# n=25
# p=0.3
# M=n*p
# V=n*p*(1-p)
# print(M)
# print(V)

# A=rbinom(100000, 1, 0.6)
# B=rbinom(100000, 1, 0.1)
# print(mean(A | B))


# A=0.45
# B=0.38
# print(A+B-(A*B))



# bs=rbinom(100000,1000,0.2)
# ns=rnorm(1000000,200,sqrt(160))
# x1=mean(bs<=190)
# x2=mean(ns<=190)
# print(pbinom(190,1000,0.2))
# print(pnorm(190,200,sqrt(160)))
