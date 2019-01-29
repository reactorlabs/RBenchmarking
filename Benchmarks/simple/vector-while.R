execute <- function(n=2500000) {
  x <- vector(length=n)
  i <- 0
  while (i < n) {
    x[[i]] <- i
    i <- i + 1
  }
}
