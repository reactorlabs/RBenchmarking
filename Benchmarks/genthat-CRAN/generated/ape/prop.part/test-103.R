library(ape)

function_to_run <- function() {
    phy <- structure(list(edge = structure(c(5L, 6L, 7L, 7L, 6L, 5L, 6L, 7L, 1L, 2L, 3L, 4L), .Dim = c(6L, 2L)), Nnode = 3L, 
        tip.label = c("D", "C", "B", "A")), class = "phylo", order = "cladewise")
    ape:::prop.part(phy)
}




