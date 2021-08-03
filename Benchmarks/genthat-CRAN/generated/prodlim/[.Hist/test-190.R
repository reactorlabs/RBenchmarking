library(prodlim)

function_to_run <- function() {
    sorted <- c(6L, 12L, 11L, 8L, 4L, 7L, 5L, 1L, 13L, 3L, 10L, 2L, 9L)
    response <- structure(c(3.10270014980633, 7.58896705419293, 3.77183943556559, 2.63274572884138, 2.77965391287061, 1.24206589762213,
        2.6663083270488, 1.9521525816458, 7.89978842497859, 7.04300874430597, 1.64977994311879, 1.30894139811451, 3.3792885859655,
        1, 1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1), .Dim = c(13L, 2L), .Dimnames = list(c("1", "2", "3", "4", "5", "8", "9",
        "16", "19", "21", "24", "25", "26"), c("time", "status")), class = "Hist", states = "1", cens.type = "rightCensored",
        cens.code = "0", model = "survival", entry.type = "")
    prodlim:::`[.Hist`(x = response, i = sorted)
}




