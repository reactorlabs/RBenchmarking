library(ape)

function_to_run <- function() {
    y <- structure(list(structure(list(edge = structure(c(5L, 6L, 6L, 5L, 7L, 7L, 6L, 1L, 2L, 7L, 3L, 4L), .Dim = c(6L, 2L)), 
        tip.label = c("t4", "t2", "t3", "t1"), edge.length = c(0.138710167724639, 0.988891728920862, 0.946668232558295, 0.0824375580996275, 
            0.514211784349754, 0.390203467104584), Nnode = 3L), class = "phylo", order = "cladewise"), structure(list(edge = structure(c(5L, 
        6L, 6L, 7L, 7L, 5L, 6L, 1L, 7L, 2L, 3L, 4L), .Dim = c(6L, 2L)), tip.label = c("t1", "t2", "t3", "t4"), edge.length = c(0.00394833879545331, 
        0.832916080253199, 0.00733414688147604, 0.207658972823992, 0.906601407798007, 0.611778643447906), Nnode = 3L), class = "phylo", 
        order = "cladewise")), class = "multiPhylo")
    ape:::.compressTipLabel(x = y)
}




