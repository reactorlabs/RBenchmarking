

genthat_extracted_call <- function() {
    type <- "tab"
    dict <- list(fig = "Figure ", tab = "Table ", eq = "Equation ", thm = "Theorem ", lem = "Lemma ", cor = "Corollary ", 
        prp = "Proposition ", cnj = "Conjecture ", def = "Definition ", exm = "Example ", exr = "Exercise ")
    bookdown:::i18n(group = "label", key = type, dict = dict)
}




