library(bibtex)

function_to_run <- function() {
    y <- list(author = "Hochberg, Y.", year = "1988", title = "A sharper Bonferroni procedure for multiple tests of significance", 
        journal = "Biometrika", edition = "75", pages = "800--803")
    bibtex:::ArrangeAuthors(x = y[["author"]])
}




