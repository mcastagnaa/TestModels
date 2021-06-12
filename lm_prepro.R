library(caret)

dataSetReg <- dataSet
indList <- c("A", "B", "C", "D", "E", "G")
preProcInd <- preProcess(dataSetReg[, indList], method = c("center", "scale"))

dataSetReg[, indList] <- predict(preProcInd, dataSetReg[, indList])

formula <- "Y~A+B+C+D+E+G"

lm <- lm(formula, dataSetReg)
print(summary(lm))

par(mfrow = c(1,1))
plot(Y, lm$fitted.values)
abline(coef = c(0,1), col = "red")

par(mfrow = c(2,2))
plot(lm, which=1, col=c("blue")) 
plot(lm, which=2, col=c("red"))
plot(lm, which=3, col=c("red"))
plot(lm, which=5, col=c("red"))

preProcInd$mean

lm$coefficients
