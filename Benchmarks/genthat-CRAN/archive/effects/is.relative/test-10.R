library(effects)

function_to_run <- function() {
    term2 <- "degrees"
    term <- "tfr"
    factors <- structure(c(0L, 1L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 1L), .Dim = 5:4, .Dimnames = list(c("fconvict", 
        "mconvict", "tfr", "partic", "degrees"), c("mconvict", "tfr", "partic", "degrees")))
    effects:::is.relative(term1 = term, term2 = term2, factors = factors)
}




