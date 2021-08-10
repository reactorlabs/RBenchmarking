library(car)

function_to_run <- function() {
    terms <- c("treatment", "gender", "treatment:gender")
    term <- "gender"
    fac <- structure(c(0L, 1L, 0L, 0L, 0L, 1L, 0L, 1L, 1L), .Dim = c(3L, 3L), .Dimnames = list(c("cbind(pre.1, pre.2, pre.3, pre.4, pre.5, post.1, post.2, post.3, post.4, post.5, fup.1, fup.2, fup.3, fup.4, fup.5)", 
        "treatment", "gender"), c("treatment", "gender", "treatment:gender")))
    car:::relatives(term = term, names = terms, factors = fac)
}




