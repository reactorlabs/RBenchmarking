library(BLModel)

function_to_run <- function() {
    tau <- 0.02
    aux <- structure(c(0.920623571658438, -0.143147774381678, 0.0216515593883701, -0.143147774381678, 0.947013632588799, 
        -0.0256549822883117, 0.0216515593883701, -0.0256549822883117, 1.0393439631772), .Dim = c(3L, 3L))
    .diag_of <- BLModel:::.diag_of
    BLModel:::.make_diag(x = .diag_of(aux/tau))
}




