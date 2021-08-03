library(prodlim)

function_to_run <- function() {
    unspecialsDesign <- FALSE
    Terms <- Hist(time, status) ~ 1
    specialsFactor <- TRUE
    specialsDesign <- FALSE
    mm <- structure(list(time = c(3.10270014980633, 3.77183943556559, 2.63274572884138, 2.77965391287061, 2.6663083270488,
        1.9521525816458, 1.64977994311879, 1.30894139811451), status = c(1, 1, 0, 0, 1, 0, 1, 1)), row.names = c(1L, 3L,
        4L, 5L, 9L, 16L, 24L, 25L), class = "data.frame")
    dropIntercept <- TRUE
    prodlim:::model.design(terms = Terms, data = mm, dropIntercept = dropIntercept, maxOrder = 1, unspecialsDesign = unspecialsDesign,
        specialsFactor = specialsFactor, specialsDesign = specialsDesign)
}




