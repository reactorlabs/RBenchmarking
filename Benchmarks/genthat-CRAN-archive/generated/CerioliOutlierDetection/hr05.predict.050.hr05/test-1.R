library(CerioliOutlierDetection)

function_to_run <- function() {
    p.dim <- 20
    n.obs <- 1000
    m.asy <- 282.873045700194
    CerioliOutlierDetection:::hr05.predict.050.hr05(m.asy = m.asy, p = p.dim, n = n.obs)
}




