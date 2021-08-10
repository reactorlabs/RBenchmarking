library(ape)

function_to_run <- function() {
    tr <- structure(list(edge = structure(c(0, 5, 5, 4, 5, 1, 2, 3), .Dim = c(4L, 2L)), tip.label = c("t1", "t3", "t2"), 
        edge.length = c(0.830447626067325, 0.641745518893003, 0.519095949130133, 0.736588314641267), Nnode = 2L), class = "phylo", 
        order = "cladewise")
    ape:::checkValidPhylo(phy = tr)
}




