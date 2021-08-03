library(prodlim)

function_to_run <- function() {
    unspecialsDesign <- FALSE
    Terms <- Hist(time, status) ~ 1
    specialsFactor <- TRUE
    specialsDesign <- FALSE
    mm <- structure(list(time = c(3.10270014980633, 7.58896705419293, 3.77183943556559, 2.63274572884138, 2.77965391287061,
        1.24206589762213, 2.6663083270488, 1.9521525816458, 7.89978842497859, 7.04300874430597, 1.64977994311879, 1.30894139811451,
        3.3792885859655), status = c(1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1)), row.names = c(1L, 2L, 3L, 4L, 5L, 8L, 9L, 16L,
        19L, 21L, 24L, 25L, 26L), class = "data.frame")
    dropIntercept <- TRUE
    prodlim:::model.design(terms = Terms, data = mm, dropIntercept = dropIntercept, maxOrder = 1, unspecialsDesign = unspecialsDesign,
        specialsFactor = specialsFactor, specialsDesign = specialsDesign)
}




