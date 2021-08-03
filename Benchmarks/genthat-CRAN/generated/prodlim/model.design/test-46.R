library(prodlim)

function_to_run <- function() {
    unspecialsDesign <- FALSE
    Terms <- Hist(time = list(L, R), event) ~ 1
    specialsFactor <- TRUE
    specialsDesign <- FALSE
    mm <- structure(list(L = 1:10, R = c(2, 3, 12, 8, 9, 10, 7, 12, 12, 12), event = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1)), row.names = c(NA,
        10L), class = "data.frame")
    dropIntercept <- TRUE
    prodlim:::model.design(terms = Terms, data = mm, dropIntercept = dropIntercept, maxOrder = 1, unspecialsDesign = unspecialsDesign,
        specialsFactor = specialsFactor, specialsDesign = specialsDesign)
}




