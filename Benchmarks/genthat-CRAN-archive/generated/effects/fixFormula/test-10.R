

genthat_extracted_call <- function() {
    term <- angle ~ recipe * temperature + (1 | recipe:replicate)
    effects:::fixFormula(term = term[[2]])
}




