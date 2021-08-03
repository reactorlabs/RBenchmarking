library(prodlim)

function_to_run <- function() {
    response <- structure(c(1.24206589762213, 1.30894139811451, 1.64977994311879, 1.9521525816458, 2.63274572884138, 2.6663083270488,
        2.77965391287061, 3.10270014980633, 3.3792885859655, 3.77183943556559, 7.04300874430597, 7.58896705419293, 7.89978842497859,
        1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0), .Dim = c(13L, 2L), .Dimnames = list(c("8", "25", "24", "16", "4", "9", "5",
        "1", "26", "3", "21", "2", "19"), c("time", "status")), class = "Hist", states = "1", model = "survival", cens.type = "rightCensored",
        cens.code = "0", entry.type = "")
    prodlim:::`[.Hist`(x = response, j = "status")
}




