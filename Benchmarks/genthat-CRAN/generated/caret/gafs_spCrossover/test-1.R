library(caret)

function_to_run <- function() {
    pop <- structure(c(1L, 0L, 1L, 1L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 1L, 0L, 1L, 0L, 1L, 1L, 1L, 0L, 1L, 1L, 0L, 0L, 
        1L, 0L, 1L, 1L, 1L, 0L, 0L, 1L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 1L, 0L, 0L, 1L, 0L, 1L, 
        1L, 0L, 1L, 1L, 1L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 0L, 0L, 
        1L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 1L, 1L), .Dim = c(10L, 10L))
    caret:::gafs_spCrossover(population = pop, fitness = 1:10, parents = 1:2)
}




