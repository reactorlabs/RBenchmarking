library(prodlim)

function_to_run <- function() {
    unspecialsDesign <- TRUE
    Terms <- Hist(time, outcome) ~ X1 + X3 + X4
    specialsFactor <- TRUE
    specialsDesign <- FALSE
    mm <- structure(list(time = 1:7, outcome = structure(c(2L, 1L, 3L, 2L, 3L, 3L, 1L), .Label = c("0", "cause1", "cause2"),
        class = "factor"), X1 = structure(c(2L, 3L, 2L, 1L, 1L, 2L, 3L), .Label = c("c", "a", "b"), class = "factor"), X3 = c(1,
        1, 1, 1, 0, 0, 1), X4 = c(44.69, 37.41, 68.54, 38.85, 35.9, 27.02, 41.84)), row.names = c(NA, 7L), class = "data.frame")
    dropIntercept <- TRUE
    prodlim:::model.design(terms = Terms, data = mm, dropIntercept = dropIntercept, maxOrder = 1, unspecialsDesign = unspecialsDesign,
        specialsFactor = specialsFactor, specialsDesign = specialsDesign)
}




