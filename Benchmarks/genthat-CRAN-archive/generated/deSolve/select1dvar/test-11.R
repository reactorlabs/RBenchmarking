library(deSolve)

function_to_run <- function() {
    Which <- 1L
    varnames <- "Aphid"
    att <- list(dim = c(201L, 61L), dimnames = list(NULL, c("time", "APHIDS1", "APHIDS2", "APHIDS3", "APHIDS4", "APHIDS5", 
        "APHIDS6", "APHIDS7", "APHIDS8", "APHIDS9", "APHIDS10", "APHIDS11", "APHIDS12", "APHIDS13", "APHIDS14", "APHIDS15", 
        "APHIDS16", "APHIDS17", "APHIDS18", "APHIDS19", "APHIDS20", "APHIDS21", "APHIDS22", "APHIDS23", "APHIDS24", "APHIDS25", 
        "APHIDS26", "APHIDS27", "APHIDS28", "APHIDS29", "APHIDS30", "APHIDS31", "APHIDS32", "APHIDS33", "APHIDS34", "APHIDS35", 
        "APHIDS36", "APHIDS37", "APHIDS38", "APHIDS39", "APHIDS40", "APHIDS41", "APHIDS42", "APHIDS43", "APHIDS44", "APHIDS45", 
        "APHIDS46", "APHIDS47", "APHIDS48", "APHIDS49", "APHIDS50", "APHIDS51", "APHIDS52", "APHIDS53", "APHIDS54", "APHIDS55", 
        "APHIDS56", "APHIDS57", "APHIDS58", "APHIDS59", "APHIDS60")), istate = c(2L, 237L, 303L, NA, 5L, 5L, 0L, 802L, 80L, 
        NA, NA, NA, NA, 18L, NA, NA, NA, NA, NA, NA, NA), rstate = c(1, 1, 200.408224763016, 0, NA), lengthvar = 60L, class = c("deSolve", 
        "matrix"), type = "lsode", dimens = 60, nspec = 1, ynames = "Aphid")
    deSolve:::select1dvar(Which = Which, var = varnames, att = att)
}




