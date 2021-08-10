library(clue)

function_to_run <- function() {
    d1 <- structure(c(52356.0831263249, 45693.4889820963, 49244.0093645861, 48742.8821337475, 49244.0093645861, 46304.9925609799, 
        6711.41270155547, 3132.40014420603, 3628.69907851139, 3132.40014420603, 6905.61738250216, 3583.53255633406, 3089.62829769244, 
        3583.53255633406, 2882.41541805663, 506.46851156935, 7.26508231136369e-13, 4251.30971554909, 506.468511569351, 3918.50354429532, 
        4251.30971554909), Size = 7L, Labels = c("ward", "single", "complete", "average", "mcquitty", "agnes", "diana"), 
        description = "Euclidean ultrametric distance", class = c("cl_dissimilarity", "cl_proximity", "dist"))
    fanny <- cluster::fanny
    x <- structure(list(membership = structure(c(0.999957342011945, 0.0467940625793616, 0.0414148216828953, 0.00996269940750247, 
        0.0107588048609664, 0.00996269940921433, 0.0491188917356259, 4.26579880550615e-05, 0.953205937420639, 0.958585178317105, 
        0.990037300592498, 0.989241195139034, 0.990037300590786, 0.950881108264374), .Dim = c(7L, 2L), .Dimnames = list(c("ward", 
        "single", "complete", "average", "mcquitty", "agnes", "diana"), NULL)), coeff = structure(c(0.953879189734333, 0.907758379468665), 
        names = c("dunn_coeff", "normalized")), memb.exp = 2, clustering = structure(c(1L, 2L, 2L, 2L, 2L, 2L, 2L), names = c("ward", 
        "single", "complete", "average", "mcquitty", "agnes", "diana")), k.crisp = 2, objective = structure(c(8021.85289417979, 
        1e-15), names = c("objective", "tolerance")), convergence = structure(c(8L, 1L, 500L), names = c("iterations", "converged", 
        "maxit")), diss = NULL, call = fanny(x = d1, k = 2), silinfo = list(widths = structure(c(1, 2, 2, 2, 2, 2, 2, 2, 
        1, 1, 1, 1, 1, 1, 0, 0.95340058181408, 0.95340058181408, 0.952199100940845, 0.913114441588164, 0.910189884165877, 
        0.90407446563476), .Dim = c(7L, 3L), .Dimnames = list(c("ward", "average", "agnes", "mcquitty", "complete", "single", 
        "diana"), c("cluster", "neighbor", "sil_width"))), clus.avg.widths = c(0, 0.931063175992968), avg.width = 0.798054150851115)), 
        class = c("fanny", "partition"))
    clue:::is.cl_hard_partition.fanny(x = x)
}




