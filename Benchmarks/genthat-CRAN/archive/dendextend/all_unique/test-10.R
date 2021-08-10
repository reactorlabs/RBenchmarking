library(dendextend)

function_to_run <- function() {
    old_labels <- c("mpg", "qsec", "cyl", "vs", "am", "drat", "gear", "wt", "carb", "disp", "hp")
    dendextend:::all_unique(x = old_labels)
}




