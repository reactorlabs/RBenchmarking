library(catdap)

function_to_run <- function() {
    tmp <- c(1L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 2L, 1L, 1L, 2L, 1L, 1L, 
        1L, 1L, 1L, 1L, 2L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 2L, 2L, 2L, 1L, 1L, 1L)
    catdap:::convi(data = tmp)
}




