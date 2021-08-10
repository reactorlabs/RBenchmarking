library(fda)

function_to_run <- function() {
    nvar <- 1
    nrep <- 4L
    fdnames <- list(c("const", "sin1", "cos1", "sin2", "cos2", "sin3", "cos3", "sin4", "cos4", "sin5", "cos5", "sin6", "cos6", 
        "sin7", "cos7", "sin8", "cos8", "sin9", "cos9", "sin10", "cos10", "sin11", "cos11", "sin12", "cos12", "sin13", "cos13", 
        "sin14", "cos14", "sin15", "cos15", "sin16", "cos16", "sin17", "cos17", "sin18", "cos18", "sin19", "cos19", "sin20", 
        "cos20", "sin21", "cos21", "sin22", "cos22", "sin23", "cos23", "sin24", "cos24", "sin25", "cos25", "sin26", "cos26", 
        "sin27", "cos27", "sin28", "cos28", "sin29", "cos29", "sin30", "cos30", "sin31", "cos31", "sin32", "cos32"), c("PC1", 
        "PC2", "PC3", "PC4"), "values")
    fda:::fdlabels(fdnames = fdnames, nrep = nrep, nvar = nvar)
}




