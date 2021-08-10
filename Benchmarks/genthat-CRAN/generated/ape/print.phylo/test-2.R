library(ape)

function_to_run <- function() {
    x <- structure(list(edge = structure(c(4L, 6L, 6L, 5L, 5L, 6L, 1L, 5L, 3L, 2L), .Dim = c(5L, 2L)), tip.label = c("A", 
        "B", "C"), Nnode = 3L), class = "phylo")
    ape:::print.phylo(x = x)
}




