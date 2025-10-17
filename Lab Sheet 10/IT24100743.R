setwd("C:\\Users\\catacolite\\Desktop\\IT24100743")

# i.

# H0 (Null Hypothesis): Customers choose the four snack types (A, B, C, D)
# with equal probability. This means P(A) = P(B) = P(C) = P(D) = 0.25.

# HA (Alternative Hypothesis): At least one snack type's probability of being
# chosen is not 0.25.


# ii.
observed <- c(120, 95, 85, 100)
prob <- c(0.25, 0.25, 0.25, 0.25)
chisq.test(x=observed, p=prob)

# iii.

# Using a standard 5% significance level (alpha = 0.05).
# The test output gives a p-value of 0.08969.
# The rejection rule is: Reject H0 if p-value < 0.05.

# Conclusion: Since the p-value (0.08969) is greater than 0.05, we do not reject the null hypothesis. There is not enough statistical evidence to
# say the owner's claim is false. We can conclude that the snack choices are equally probable.