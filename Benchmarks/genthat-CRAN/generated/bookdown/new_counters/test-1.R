library(bookdown)

function_to_run <- function() {
    label_types <- bookdown:::label_types
    chaps <- "0"
    bookdown:::new_counters(type = label_types, rownames = chaps)
}




