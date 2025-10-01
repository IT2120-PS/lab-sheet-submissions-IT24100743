setwd("C:\\Users\\catacolite\\Desktop\\IT24100743")

# i.
bake <- rnorm(25, mean = 45, sd = 2)

bake

# ii.
res <- t.test(bake, mu = 46, alternative = "less")

res

res$statistic
res$p.value
res$conf.int