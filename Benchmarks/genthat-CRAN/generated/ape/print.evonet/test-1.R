library(ape)

function_to_run <- function() {
    x <- structure(list(edge = structure(c(6L, 6L, 7L, 8L, 8L, 7L, 9L, 9L, 1L, 7L, 8L, 2L, 3L, 9L, 4L, 5L), .Dim = c(8L, 
        2L)), edge.length = c(0.262671800723099, 0.0381918982602656, 0.0944970125953356, 0.129982889867497, 0.129982889867497, 
        0.204646221284444, 0.0198336811783888, 0.0198336811783888), tip.label = c("t4", "t2", "t5", "t1", "t3"), Nnode = 4L, 
        reticulation = structure(6:9, .Dim = c(2L, 2L), .Dimnames = list(NULL, c("from", "to")))), class = c("evonet", "phylo"), 
        order = "cladewise")
    ape:::print.evonet(x = x)
}




