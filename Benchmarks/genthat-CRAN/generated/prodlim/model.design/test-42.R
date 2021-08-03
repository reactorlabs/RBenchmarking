library(prodlim)

function_to_run <- function() {
    unspecialsDesign <- FALSE
    Terms <- Hist(time = time, event = status, entry = entry) ~ 1
    specialsFactor <- TRUE
    specialsDesign <- FALSE
    mm <- structure(list(time = 10:20, status = c(1, 0, 2, 2, 0, 0, 1, 2, 0, 2, 0), entry = c(7, 3, 11, 12, 11, 2, 1, 7,
        15, 17, 3)), row.names = c(NA, 11L), class = "data.frame")
    dropIntercept <- TRUE
    prodlim:::model.design(terms = Terms, data = mm, dropIntercept = dropIntercept, maxOrder = 1, unspecialsDesign = unspecialsDesign,
        specialsFactor = specialsFactor, specialsDesign = specialsDesign)
}




