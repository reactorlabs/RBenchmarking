

genthat_extracted_call <- function() {
    pop <- structure(c(1L, 0L, 1L, 1L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 1L, 0L, 1L, 0L, 1L, 1L, 1L, 0L, 1L, 1L, 0L, 0L, 
        1L, 0L, 1L, 1L, 1L, 0L, 0L, 1L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 1L, 0L, 0L, 1L, 0L, 1L, 
        1L, 0L, 1L, 1L, 1L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 0L, 0L, 
        1L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 1L, 1L), .Dim = c(10L, 10L))
    caret:::gafs_lrSelection(population = pop, fitness = 1:10)
}




