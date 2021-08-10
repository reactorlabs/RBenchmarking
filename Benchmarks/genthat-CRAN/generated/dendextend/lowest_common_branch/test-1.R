library(dendextend)

function_to_run <- function() {
    item2 <- structure(c(1L, 1L, 2L, 2L), names = c("1", "2", "3", "4"))
    item1 <- structure(c(1L, 1L, 1L, 1L), names = c("1", "2", "3", "4"))
    dendextend:::lowest_common_branch(item1 = item1, item2 = item2)
}




