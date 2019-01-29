execute <- function(n=1000) {
  x <- matrix(nrow=n, ncol=n)
  i <- 1
  while (i < n) {
    j <- 1
    while (j < n) {
      x[[i, j]] <- 5
      j <- j + 1
    }
    i <- i + 1
  }
}
