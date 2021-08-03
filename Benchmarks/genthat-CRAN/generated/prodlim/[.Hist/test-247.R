library(prodlim)

function_to_run <- function() {
    object <- structure(c(3.10270014980633, 7.58896705419293, 3.77183943556559, 1.36318596916766, 1.24206589762213, 2.6663083270488,
        5.85777565907879, 1.65775669480509, 2.26531910320609, 2.92318991660343, 5.1129483156286, 3.55152859348746, 1.64977994311879,
        1.30894139811451, 3.3792885859655, 15.1347344166676, 5.75829175052527, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1), .Dim = c(17L, 2L), .Dimnames = list(NULL, c("time", "status")), class = "Hist", states = "1", model = "survival",
        cens.type = "rightCensored", cens.code = "0", entry.type = "")
    column <- "status"
    prodlim:::`[.Hist`(x = object, j = column)
}




