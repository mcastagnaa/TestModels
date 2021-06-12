formula <- "Y~A+B+C+D+E+G"

lm <- lm(formula, dataSet)
print(summary(lm))

par(mfrow = c(1,1))
plot(Y, lm$fitted.values)
abline(coef = c(0,1), col = "red")

par(mfrow = c(2,2))
plot(lm, which=1, col=c("blue")) 
plot(lm, which=2, col=c("red"))
plot(lm, which=3, col=c("red"))
plot(lm, which=5, col=c("red"))

CHECK <- data.frame(est = lm$coefficients, true = c(i, A.hat, B.hat, C.hat, D.hat, E.hat, G.hat),
           stringsAsFactors = F) %>%
  mutate(diffPerc = round(est/true-1,4)) %>%
  arrange(desc(abs(diffPerc)))

print(CHECK)
