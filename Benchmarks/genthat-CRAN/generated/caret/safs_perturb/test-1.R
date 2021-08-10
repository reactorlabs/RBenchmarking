library(caret)

function_to_run <- function() {
    selected_vars <- c(1L, 5L, 10L)
    caret:::safs_perturb(x = selected_vars, vars = 10, number = 1)
}




