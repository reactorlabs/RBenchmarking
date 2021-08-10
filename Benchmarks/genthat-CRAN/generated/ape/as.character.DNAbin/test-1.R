library(ape)

function_to_run <- function() {
    y <- structure(as.raw(c(136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136, 136)), .Dim = c(3L, 5L), 
        .Dimnames = list(c("No304", "No306", "No0906S"), NULL), class = "DNAbin")
    x <- structure(as.raw(c(240, 136, 24, 24, 24, 24, 40, 40, 72, 72)), .Dim = c(2L, 5L), .Dimnames = list(c("No305", "No304"), 
        NULL), class = "DNAbin")
    ape:::as.character.DNAbin(x = cbind(x, y, fill.with.gaps = TRUE))
}




