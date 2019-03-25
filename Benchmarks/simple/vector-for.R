execute <- function(n=1000000) {
  x <- vector(length=n)
  for (i in 1:n) {
    x[[i]] <- i
  }
}
