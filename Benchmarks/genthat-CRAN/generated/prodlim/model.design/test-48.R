library(prodlim)

function_to_run <- function() {
    unspecialsDesign <- FALSE
    Terms <- Hist(time, event) ~ X
    specialsFactor <- TRUE
    specialsDesign <- FALSE
    mm <- structure(list(time = 1:100, event = c(0L, 0L, 0L, 1L, 2L, 0L, 2L, 1L, 0L, 2L, 1L, 0L, 2L, 0L, 1L, 1L, 1L, 0L,
        1L, 1L, 1L, 2L, 2L, 2L, 0L, 1L, 1L, 0L, 2L, 1L, 1L, 2L, 0L, 2L, 1L, 1L, 0L, 0L, 1L, 1L, 0L, 1L, 2L, 1L, 0L, 1L, 2L,
        1L, 0L, 1L, 1L, 2L, 0L, 1L, 0L, 0L, 0L, 2L, 1L, 2L, 2L, 2L, 0L, 0L, 0L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 0L, 2L, 0L, 0L,
        1L, 0L, 0L, 1L, 1L, 0L, 2L, 1L, 1L, 0L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 1L, 1L, 0L), X = c(0L, 0L, 0L,
        1L, 0L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 0L,
        0L, 0L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 0L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 0L, 0L, 0L,
        1L, 1L, 0L, 1L, 0L, 1L, 1L, 0L, 1L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 1L, 1L, 0L, 1L, 0L, 0L, 1L,
        1L, 1L, 0L, 1L, 1L, 0L, 1L, 1L, 1L, 1L)), row.names = c(NA, 100L), class = "data.frame")
    dropIntercept <- TRUE
    prodlim:::model.design(terms = Terms, data = mm, dropIntercept = dropIntercept, maxOrder = 1, unspecialsDesign = unspecialsDesign,
        specialsFactor = specialsFactor, specialsDesign = specialsDesign)
}




