library(ape)

function_to_run <- function() {
    y <- structure(list(structure(list(edge = structure(c(5L, 6L, 6L, 5L, 7L, 7L, 6L, 1L, 2L, 7L, 3L, 4L), .Dim = c(6L, 2L)), 
        tip.label = c("t4", "t2", "t3", "t1"), edge.length = c(0.138710167724639, 0.988891728920862, 0.946668232558295, 0.0824375580996275, 
            0.514211784349754, 0.390203467104584), Nnode = 3L), class = "phylo", order = "cladewise"), structure(list(edge = structure(c(5L, 
        6L, 6L, 7L, 7L, 5L, 6L, 1L, 7L, 2L, 3L, 4L), .Dim = c(6L, 2L)), tip.label = c("t1", "t2", "t3", "t4"), edge.length = c(0.00394833879545331, 
        0.832916080253199, 0.00733414688147604, 0.207658972823992, 0.906601407798007, 0.611778643447906), Nnode = 3L), class = "phylo", 
        order = "cladewise")), class = "multiPhylo")
    x <- structure(list(structure(list(edge = structure(c(5L, 5L, 6L, 6L, 7L, 7L, 1L, 6L, 2L, 7L, 3L, 4L), .Dim = c(6L, 2L)), 
        tip.label = c("t1", "t4", "t2", "t3"), edge.length = c(0.736588314641267, 0.13466659723781, 0.656992290401831, 0.705064784036949, 
            0.45774177624844, 0.719112251652405), Nnode = 3L), class = "phylo", order = "cladewise"), structure(list(edge = structure(c(3L, 
        3L, 1L, 2L), .Dim = c(2L, 2L)), tip.label = c("t1", "t2"), edge.length = c(0.462292822543532, 0.940014522755519), 
        Nnode = 1L), class = "phylo", order = "cladewise")), class = "multiPhylo")
    ape:::c.multiPhylo(x, y)
}




