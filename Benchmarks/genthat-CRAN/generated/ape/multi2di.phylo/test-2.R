

genthat_extracted_call <- function() {
    tr <- structure(list(edge = structure(c(4L, 4L, 4L, 1L, 2L, 3L), .Dim = 3:2), edge.length = c(1, 1, 1), Nnode = 1L, tip.label = c("a", 
        "b", "c")), class = "phylo", order = "cladewise")
    ape:::multi2di.phylo(phy = tr)
}




