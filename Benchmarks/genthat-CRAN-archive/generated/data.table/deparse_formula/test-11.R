

genthat_extracted_call <- function() {
    varnames <- c("v1", "v2", "v3", "v4")
    formula <- ... ~ v3
    allvars <- c("v3", "v4")
    data.table:::deparse_formula(expr = as.list(formula)[-1L], varnames = varnames, allvars = allvars)
}




