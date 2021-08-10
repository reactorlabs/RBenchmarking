library(data.table)

function_to_run <- function() {
    byval <- list(A = c(1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L))
    data.table:::uniqlist(l = byval)
}




