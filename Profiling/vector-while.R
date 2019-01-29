execute <- function(n=25000) {
Rprof(filename = "vector-while.R-prof", interval = 0.02, line.profiling = TRUE, memory.profiling = TRUE)
  x <- vector(length=n)
  i <- 0
  while (i < n) {
    x[[i]] <- i
    i <- i + 1
  }
}
