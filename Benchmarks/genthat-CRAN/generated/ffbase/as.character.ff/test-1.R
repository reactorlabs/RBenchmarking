library(ffbase)

function_to_run <- function() {
    ff <- ff::ff
    ffbase:::as.character.ff(x = ff(seq.Date(Sys.Date(), Sys.Date() + 100, by = "day")))
}




