library(prodlim)

function_to_run <- function() {
    to <- structure(c(1L, 4L, 3L, 2L, 2L), .Label = c("0", "Dead", "Disease\nfree", "Diseased"), class = "factor")
    time <- 1:5
    from <- structure(c(1L, 1L, 2L, 2L, 1L), .Label = c("Disease\nfree", "Diseased"), class = "factor")
    prodlim:::Hist(time = time, event = list(from, to))
}




