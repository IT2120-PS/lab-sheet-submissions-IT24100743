setwd("C:\\Users\\IT24100743\\Desktop\\IT24100743")

data <- read.table('Exercise - LaptopsWeights.txt', header=TRUE)

#fix(data)

names(data) <- c("Weights")

#fix(data)

attach(data)

popmn <- mean(Weights)
popsd <- sd(Weights)

samples <- c()
n <- c()

for (i in 1:25) {
  s <- sample(Weights, 6 , replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i))
}

colnames(samples) = n

s.means <- apply(samples, 2, mean)
s.sds <- apply(samples, 2, sd)

samplemean <- mean(s.means)
samplesd <- sd(s.means)

popmn
popsd

samplemean
samplesd

truesd <- popsd / sqrt(6)

truesd