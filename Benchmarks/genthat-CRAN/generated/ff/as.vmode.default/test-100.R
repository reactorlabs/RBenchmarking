library(ff)

function_to_run <- function() {
    vmode <- "integer"
    value <- 601:800
    ff:::as.vmode.default(x = value, vmode = vmode)
}




