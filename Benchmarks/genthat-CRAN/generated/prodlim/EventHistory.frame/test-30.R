library(prodlim)

function_to_run <- function() {
    formula <- Hist(time, status) ~ 1
    data <- structure(list(eventtime = c(3.10270014980633, 3.77183943556559, 3.2123185194632, 2.84218186399473, 2.6663083270488,
        3.25814558512378, 1.64977994311879, 1.30894139811451), censtime = c(6.35866326476702, 12.5199072245397, 2.63274572884138,
        2.77965391287061, 5.43827474715849, 1.9521525816458, 8.90199912486244, 7.89944933050629), time = c(3.10270014980633,
        3.77183943556559, 2.63274572884138, 2.77965391287061, 2.6663083270488, 1.9521525816458, 1.64977994311879, 1.30894139811451),
        event = c(1, 1, 0, 0, 1, 0, 1, 1), X1 = c(1, 1, 1, 1, 1, 1, 1, 1), X2 = c(1.37095844714667, 0.363128411337339, 0.63286260496104,
            0.404268323140999, 2.01842371387704, 0.635950398070074, 1.2146746991726, 1.89519346126497), status = c(1, 1,
            0, 0, 1, 0, 1, 1)), row.names = c(1L, 3L, 4L, 5L, 9L, 16L, 24L, 25L), class = "data.frame")
    prodlim:::EventHistory.frame(formula = formula, data = data, unspecialsDesign = FALSE, specials = c("Strata", "strata",
        "factor", "NN", "cluster"), specialsDesign = FALSE, stripSpecials = c("strata", "cluster", "NN"), stripArguments = list(strata = NULL,
        NN = NULL, cluster = NULL), stripAlias = list(strata = c("Strata", "factor")), check.formula = TRUE)
}




