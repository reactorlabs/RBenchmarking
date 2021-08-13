

genthat_extracted_call <- function() {
    row.w <- c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
    ncp <- 5
    ind.sup <- NULL
    g <- 1L
    excl <- NULL
    aux.base <- structure(list(Label = structure(c(1L, 1L, 2L, 3L, 1L, 2L, 2L, 1L, 3L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 3L, 3L, 
        2L, 1L, 1L), .Label = c("Saumur", "Bourgueuil", "Chinon"), class = "factor"), Soil = structure(c(2L, 2L, 2L, 3L, 
        1L, 1L, 1L, 2L, 2L, 3L, 3L, 3L, 1L, 1L, 2L, 1L, 1L, 3L, 2L, 4L, 4L), .Label = c("Reference", "Env1", "Env2", "Env4"), 
        class = "factor")), class = "data.frame", row.names = c("2EL ", "1CHA", "1FON", "1VAU", "1DAM", "2BOU", "1BOI", "3EL ", 
        "DOM1", "1TUR", "4EL ", "PER1", "2DAM", "1POY", "1ING", "1BEN", "2BEA", "1ROC", "2ING", "T1  ", "T2  "))
    FactoMineR:::MCA(X = aux.base, ncp = ncp, ind.sup = ind.sup, excl = excl[[g]], graph = FALSE, row.w = row.w)
}




