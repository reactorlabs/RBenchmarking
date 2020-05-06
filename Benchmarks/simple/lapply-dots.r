foo <- function() {
  x <- 1:100
  a <- 2.3
  f <- function(x, y) x + 1.5 * y
  lapply(x, f, y=a)
}
