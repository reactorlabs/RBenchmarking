

genthat_extracted_call <- function() {
    tr <- structure(list(edge = structure(c(6L, 6L, 7L, 7L, 8L, 8L, 9L, 9L, 1L, 7L, 2L, 8L, 3L, 9L, 4L, 5L), .Dim = c(8L, 
        2L)), edge.length = c(1, 1, 1, 1, 1, 1, 1, 1), Nnode = 4L, tip.label = c("A", "B", "C", "D", "E"), root.edge = 1), 
        class = "phylo", order = "cladewise")
    ape:::drop.tip(phy = tr, tip = c("A", "B"), root.edge = 3)
}




