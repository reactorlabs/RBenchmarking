library(arm)

function_to_run <- function() {
    x2 <- c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 0L, 1L, 1L, 1L, 1L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 0L, 1L, 0L, 0L, 1L, 1L, 0L, 0L, 1L, 
        1L, 0L, 0L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 1L, 1L, 1L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 1L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 1L, 
        1L, 1L, 0L, 1L, 0L, 1L, 0L, 1L, 1L, 0L, 0L, 0L, 1L, 1L, 0L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 0L, 0L, 1L, 
        1L, 1L, 0L, 1L, 0L, 1L, 1L, 1L, 0L, 1L, 0L, 1L, 0L, 1L)
    arm:::rescale(x = x2, binary.inputs = "center")
}




