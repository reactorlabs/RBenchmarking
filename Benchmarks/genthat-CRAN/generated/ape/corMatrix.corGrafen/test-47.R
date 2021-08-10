library(ape)

function_to_run <- function() {
    object <- structure(0, formula = ~1, fixed = FALSE, tree = structure(list(edge = structure(c(6L, 7L, 8L, 9L, 9L, 8L, 
        7L, 6L, 7L, 8L, 9L, 1L, 2L, 3L, 4L, 5L), .Dim = c(8L, 2L)), edge.length = c(0.38, 0.13, 0.28, 0.21, 0.21, 0.49, 0.62, 
        1), Nnode = 4L, tip.label = c("Homo", "Pongo", "Macaca", "Ateles", "Galago")), class = "phylo", order = "cladewise"), 
        class = c("corGrafen", "corPhyl", "corStruct"), Dim = list(N = 5L, M = 1L, maxLen = 5L, sumLenSq = 25, len = structure(5L, 
            .Dim = 1L, .Dimnames = list(groups = "1"), class = "table"), start = 0L), covariate = 1:5, index = 1:5)
    ape:::corMatrix.corGrafen(object = object)
}




