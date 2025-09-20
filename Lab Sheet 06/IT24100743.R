setwd("C:\\Users\\catacolite\\Desktop\\IT24100743")

# Q1
# i. 
# Binomial distribution with n=50, p=0.85
# X is the number of students who passed out of 50

# ii.
p_at_least_47 <- 1 - pbinom(46, size=50, prob=0.85)
p_at_least_47

# Q2
# i. 
# X is the number of customer calls received in an hour

# ii.
# Poisson distribution with lambda=12

# iii.
p_exactly_15 <- dpois(15, lambda=12)
p_exactly_15