library(prodlim)

function_to_run <- function() {
    event.history <- structure(c(3.10270014980633, 3.77183943556559, 2.63274572884138, 2.77965391287061, 2.6663083270488,
        1.9521525816458, 1.64977994311879, 1.30894139811451, 1, 1, 0, 0, 1, 0, 1, 1), .Dim = c(8L, 2L), .Dimnames = list(c("1",
        "3", "4", "5", "9", "16", "24", "25"), c("time", "status")), class = "Hist", states = "1", cens.type = "rightCensored",
        cens.code = "0", model = "survival", entry.type = "")
    prodlim:::`[.Hist`(x = event.history, j = "time")
}




