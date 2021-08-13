

genthat_extracted_call <- function() {
    tr <- structure(list(edge = structure(c(7L, 7L, 8L, 8L, 9L, 9L, 10L, 10L, 11L, 11L, 1L, 8L, 2L, 9L, 3L, 10L, 4L, 11L, 
        5L, 6L), .Dim = c(10L, 2L)), tip.label = c("t2", "t4", "t6", "t5", "t1", "t3"), edge.length = c(0.45774177624844, 
        0.719112251652405, 0.934672247152776, 0.255428824340925, 0.462292822543532, 0.940014522755519, 0.978226428385824, 
        0.117487361654639, 0.474997081561014, 0.560332746244967), Nnode = 5L), class = "phylo", order = "cladewise")
    old <- c("t1", "t2", "t3", "t4", "t5", "t6")
    new <- c("x1", "x2", "x3", "x4", "x5", "x6")
    ape:::updateLabel.phylo(x = tr, old = old, new = new)
}




