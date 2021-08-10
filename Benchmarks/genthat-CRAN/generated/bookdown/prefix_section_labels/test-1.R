library(bookdown)

function_to_run <- function() {
    lab <- "tab:foo"
    bookdown:::prefix_section_labels(labels = lab)
}




