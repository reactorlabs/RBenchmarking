

genthat_extracted_call <- function() {
    X <- "income"
    i <- 1L
    effects:::matchVarName(name = X[[i]], expressions = c("type", "income", "education", "type:income", "type:education"))
}




