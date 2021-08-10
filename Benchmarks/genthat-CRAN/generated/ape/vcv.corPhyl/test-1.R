library(ape)

function_to_run <- function() {
    tr <- structure(list(edge = structure(c(6L, 6L, 7L, 7L, 8L, 8L, 9L, 9L, 1L, 7L, 2L, 8L, 3L, 9L, 4L, 5L), .Dim = c(8L, 
        2L)), tip.label = c("t1", "t2", "t4", "t3", "t5"), edge.length = c(0.705064784036949, 0.45774177624844, 0.719112251652405, 
        0.934672247152776, 0.255428824340925, 0.462292822543532, 0.940014522755519, 0.978226428385824), Nnode = 4L), class = "phylo", 
        order = "cladewise")
    corBrownian <- ape::corBrownian
    ape:::vcv.corPhyl(phy = corBrownian(1, tr))
}




