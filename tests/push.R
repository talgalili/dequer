suppressPackageStartupMessages(library(dequer))

n <- 1e2

dl <- deque()
for (i in 1:n) push(dl, i)

l1 <- lapply(n:1, identity)
l2 <- as.list(dl)

stopifnot(all.equal(l1, l2))

invisible({rm(dl);gc()})
