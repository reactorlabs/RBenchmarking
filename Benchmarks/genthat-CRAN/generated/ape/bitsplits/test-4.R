library(ape)

function_to_run <- function() {
    TR <- structure(list(structure(list(edge = structure(c(6L, 6L, 6L, 7L, 7L, 8L, 8L, 1L, 2L, 7L, 3L, 8L, 4L, 5L), .Dim = c(7L, 
        2L)), edge.length = c(0.705064784036949, 0.45774177624844, 0.719112251652405, 0.934672247152776, 0.255428824340925, 
        0.462292822543532, 0.940014522755519), Nnode = 3L), class = "phylo", order = "cladewise"), structure(list(edge = structure(c(6L, 
        7L, 7L, 6L, 8L, 8L, 6L, 7L, 2L, 5L, 8L, 4L, 1L, 3L), .Dim = c(7L, 2L)), edge.length = c(0.946668232558295, 0.0824375580996275, 
        0.514211784349754, 0.390203467104584, 0.905738130910322, 0.446969628101215, 0.836004259996116), Nnode = 3L), class = "phylo", 
        order = "cladewise")), TipLabel = c("t1", "t2", "t4", "t3", "t5"), class = "multiPhylo")
    ape:::bitsplits(x = TR)
}




