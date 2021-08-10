library(BMisc)

function_to_run <- function() {
    vs <- list("x", "w", "z")
    lhs.vars <- BMisc::lhs.vars
    formla <- y ~ x
    BMisc:::toformula(yname = lhs.vars(formla), xnames = vs)
}




