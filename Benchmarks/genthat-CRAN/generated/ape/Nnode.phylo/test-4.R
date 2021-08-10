library(ape)

function_to_run <- function() {
    x <- structure(list(edge = structure(c(5L, 5L, 5L, 6L, 6L, 1L, 2L, 6L, 3L, 4L), .Dim = c(5L, 2L)), Nnode = 2L, tip.label = c("a", 
        "b", "c", "d")), class = "phylo", order = "cladewise")
    ape:::Nnode.phylo(phy = x)
}




