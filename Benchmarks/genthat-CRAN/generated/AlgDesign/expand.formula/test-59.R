

genthat_extracted_call <- function() {
    varNames <- c("A", "B", "C")
    numericColumns <- structure(c(TRUE, TRUE, TRUE), names = c("A", "B", "C"))
    frml <- ~quad(.)
    AlgDesign:::expand.formula(frml = frml, varNames = varNames, numerics = numericColumns)
}




