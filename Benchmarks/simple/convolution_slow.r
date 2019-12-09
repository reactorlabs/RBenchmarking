onvolveSlow <- function(x,y) {
  nx <- length(x)
  ny <- length(y)
  z <- numeric(nx + ny - 1)
  for(i in seq(length = nx)) {
    xi <- x[[i]]
    for(j in seq(length = ny)) {
      ij <- i + j - 1
      z[[ij]] <- z[[ij]] + xi * y[[j]]
    }
  }
  z
}

execute <- function(n) {
  a = 1:n
  b = 1:n
  for (i in 1:10) {
    convolve(a,b)
  }
}
