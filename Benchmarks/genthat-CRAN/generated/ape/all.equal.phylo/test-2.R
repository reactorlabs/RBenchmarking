library(ape)

function_to_run <- function() {
    t2 <- structure(list(edge = structure(c(3L, 3L, 1L, 2L), .Dim = c(2L, 2L)), edge.length = c(1, 1), Nnode = 1L, tip.label = c("b", 
        "a")), class = "phylo", order = "cladewise")
    t1 <- structure(list(edge = structure(c(3L, 3L, 1L, 2L), .Dim = c(2L, 2L)), edge.length = c(1, 1), Nnode = 1L, tip.label = c("a", 
        "b")), class = "phylo", order = "cladewise")
    ape:::all.equal.phylo(target = t1, current = t2)
}




