

genthat_extracted_call <- function() {
    unique.treats <- c("0", "1")
    s.d.denom <- "pooled"
    allowable.s.d.denoms <- c("pooled", "all", "weighted", "treated", "control")
    cobalt:::match_arg(arg = s.d.denom, choices = unique(c(unique.treats, allowable.s.d.denoms)), several.ok = TRUE)
}




