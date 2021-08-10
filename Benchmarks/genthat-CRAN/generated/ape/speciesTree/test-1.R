library(ape)

function_to_run <- function() {
    TR <- structure(list(structure(list(edge = structure(c(5L, 6L, 7L, 7L, 6L, 5L, 6L, 7L, 1L, 2L, 3L, 4L), .Dim = c(6L, 
        2L)), edge.length = c(0.04, 0.01, 0.05, 0.05, 0.06, 0.1), Nnode = 3L, tip.label = c("B", "C", "D", "A")), class = "phylo", 
        order = "cladewise"), structure(list(edge = structure(c(5L, 6L, 7L, 7L, 6L, 5L, 6L, 7L, 1L, 2L, 3L, 4L), .Dim = c(6L, 
        2L)), edge.length = c(0.03, 0.02, 0.07, 0.07, 0.09, 0.12), Nnode = 3L, tip.label = c("A", "C", "D", "B")), class = "phylo", 
        order = "cladewise")), class = "multiPhylo")
    ape:::speciesTree(x = TR)
}




