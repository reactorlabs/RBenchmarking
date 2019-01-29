execute <- function(n=2500000) {
  x <- vector(length=n)
  for (i in 1:n) {
    x[[i]] <- i
  }
}
