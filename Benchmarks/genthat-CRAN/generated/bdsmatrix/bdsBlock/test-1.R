library(bdsmatrix)

function_to_run <- function() {
    id <- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")
    group <- c(1, 1, 3, 2, 3, 3, 2, 3, 2, 4)
    bdsmatrix:::bdsBlock(id = id, group = group)
}




