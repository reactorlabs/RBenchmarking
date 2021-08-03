library(prodlim)

function_to_run <- function() {
    unspecialsDesign <- FALSE
    Terms <- Hist(time, status) ~ 1
    specialsFactor <- TRUE
    specialsDesign <- FALSE
    mm <- structure(list(time = c(1, 2, 3, 3, 3, 4, 5, 5, 6, 7), status = c(1, 0, 0, 1, 0, 1, 0, 1, 1, 0)), row.names = c(NA,
        10L), class = "data.frame")
    dropIntercept <- TRUE
    prodlim:::model.design(terms = Terms, data = mm, dropIntercept = dropIntercept, maxOrder = 1, unspecialsDesign = unspecialsDesign,
        specialsFactor = specialsFactor, specialsDesign = specialsDesign)
}




