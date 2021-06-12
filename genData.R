library(dplyr)

rm(list = ls())
### Setup ##############
set.seed(123)

obsNo <- 1000

A <- rnorm(obsNo, mean = 10, sd = 30)
B <- runif(obsNo, min = -10, max = 300)
C <- rpois(obsNo, lambda = 10)
D <- rnorm(obsNo, mean = 0, sd = 100)
E <- rcauchy(obsNo, location = 2, scale = 5)
G <- rchisq(obsNo, df = 20, ncp = 0)

plot(E)

par(mfrow = c(2,3))
hist(A)
hist(B)
hist(C)
hist(D)
hist(E)
hist(G)

err <- rnorm(obsNo, mean= 0, sd = 200)

i <- 100
A.hat <- 1
B.hat <- 2
C.hat <- 3
D.hat <- 4
E.hat <- 5
G.hat <- 6

Y = i + A.hat*A + B.hat*B + C.hat*C + D.hat*D + E.hat*E + G.hat*G + err

dataSet <- data.frame(A, B, C, D, E, G, Y, err, 
                      stringsAsFactors = F)

rm(A, B, C, D, E, G)
