

genthat_extracted_call <- function() {
    outlist <- list(name = "nodematch", coef.names = "nodematch.Sex", inputs = c(1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L, 2L, 1L, 
        2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 1L, 2L, 1L, 2L, 2L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 
        1L, 1L, 2L, 2L, 2L, 1L, 2L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 1L, 1L, 
        2L, 1L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 2L, 
        1L, 1L, 1L, 1L, 1L, 2L, 1L, 1L, 2L, 2L, 1L, 2L, 1L, 1L, 1L, 2L, 2L, 1L, 2L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 
        1L, 2L, 1L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 2L, 
        1L, 2L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 1L, 1L, 1L, 1L, 1L, 2L, 1L, 2L, 1L, 1L, 2L, 
        2L, 2L, 2L, 1L, 1L, 1L, 2L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 1L, 2L, 2L, 1L, 1L, 2L, 2L), dependence = FALSE, minval = 0, 
        pkgname = "ergm")
    model <- structure(list(formula = faux.mesa.high ~ indices + edges + nodematch("Sex") + nodefactor("Grade"), coef.names = c("tail", 
        "head", "edges"), offset = c(FALSE, FALSE, FALSE), terms = list(list(name = "indices", coef.names = c("tail", "head"), 
        dependence = FALSE, pkgname = "ergm", inputs = c(0, 2, 0)), list(name = "edges", coef.names = "edges", dependence = FALSE, 
        minval = 0, maxval = 20910, conflicts.constraints = "edges", pkgname = "ergm", inputs = c(0, 1, 0))), networkstats.0 = NULL, 
        etamap = NULL, term.skipped = c(FALSE, FALSE, FALSE), minval = c(-Inf, -Inf, 0), maxval = c(Inf, Inf, 20910), duration = c(FALSE, 
            FALSE)), class = "ergm_model")
    ergm:::updatemodel.ErgmTerm(model = model, outlist = outlist)
}




