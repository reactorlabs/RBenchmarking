

genthat_extracted_call <- function() {
    vs <- list("x", "w", "z")
    lhs.vars <- BMisc::lhs.vars
    formla <- y ~ x
    BMisc:::toformula(yname = lhs.vars(formla), xnames = vs)
}




