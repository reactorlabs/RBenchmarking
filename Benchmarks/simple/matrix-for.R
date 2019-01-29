execute <- function(n=1000) {
  x <- matrix(nrow=n, ncol=n)
  for (i in 1:n) {
    for (j in 1:n) {
      x[[i, j]] <- 5
    }
  }
}
