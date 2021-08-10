library(ape)

function_to_run <- function() {
    enet <- structure(list(edge = structure(c(4L, 5L, 5L, 6L, 4L, 7L, 5L, 1L, 6L, 2L, 7L, 3L), .Dim = c(6L, 2L)), edge.length = c(1, 
        2, 1, 1, 2, 1), Nnode = 4L, node.label = c("", "", "#H1", ""), tip.label = c("a", "b", "c"), reticulation = structure(7:6, 
        .Dim = 1:2)), class = c("evonet", "phylo"), order = "cladewise")
    ape:::plot.evonet(x = enet, arrows = 1)
}




