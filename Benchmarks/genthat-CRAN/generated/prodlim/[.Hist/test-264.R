library(prodlim)

function_to_run <- function() {
    response <- structure(c(1.30894139811451, 1.64977994311879, 1.9521525816458, 2.63274572884138, 2.6663083270488, 2.77965391287061,
        3.10270014980633, 3.77183943556559, 1, 1, 0, 0, 1, 0, 1, 1), .Dim = c(8L, 2L), .Dimnames = list(c("25", "24", "16",
        "4", "9", "5", "1", "3"), c("time", "status")), class = "Hist", states = "1", model = "survival", cens.type = "rightCensored",
        cens.code = "0", entry.type = "")
    prodlim:::`[.Hist`(x = response, j = "status")
}




