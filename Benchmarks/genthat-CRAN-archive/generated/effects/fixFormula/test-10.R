library(effects)

function_to_run <- function() {
    term <- angle ~ recipe * temperature + (1 | recipe:replicate)
    effects:::fixFormula(term = term[[2]])
}




