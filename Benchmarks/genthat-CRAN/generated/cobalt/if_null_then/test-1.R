library(cobalt)

function_to_run <- function() {
    s.d.denom.list <- NULL
    s.d.denom <- structure("1", names = "Adj")
    i <- "Adj"
    cobalt:::if_null_then(x1 = s.d.denom.list[[i]], x2 = s.d.denom[i])
}




