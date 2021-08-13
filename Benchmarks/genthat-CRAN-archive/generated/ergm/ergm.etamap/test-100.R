

genthat_extracted_call <- function() {
    model <- structure(list(formula = tempnet ~ edges + kstar(2), coef.names = c("edges", "kstar2"), offset = c(FALSE, FALSE), 
        terms = list(list(name = "edges", coef.names = "edges", dependence = FALSE, minval = 0, maxval = 120, conflicts.constraints = "edges", 
            pkgname = "ergm", inputs = c(0, 1, 0)), list(name = "kstar", coef.names = "kstar2", inputs = c(0, 1, 1, 2), minval = 0, 
            conflicts.constraints = "degreedist", pkgname = "ergm")), networkstats.0 = NULL, etamap = NULL, term.skipped = c(FALSE, 
            FALSE), minval = c(0, 0), maxval = c(120, Inf), duration = c(FALSE, FALSE)), class = "ergm_model")
    ergm:::ergm.etamap(model = model)
}




