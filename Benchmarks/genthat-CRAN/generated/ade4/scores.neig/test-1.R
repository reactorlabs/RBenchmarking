library(ade4)

function_to_run <- function() {
    neig <- ade4::neig
    ade4:::scores.neig(obj = neig(n.cir = 24))
}




