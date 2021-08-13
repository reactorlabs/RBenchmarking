library(corrgram)

function_to_run <- function() {
    outer.labels <- NULL
    ord <- 1:4
    nc <- 4L
    corrgram:::corrgram.outer.labels(side = 1, nc = nc, ord = ord, ll = outer.labels$bottom)
}




