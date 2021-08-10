library(caret)

function_to_run <- function() {
    groups <- c("a", "a", "a", "a", "a", "a", "b", "b", "b", "b", "b", "c", "c", "c", "c", "d", "d", "d", "d", "d")
    caret:::groupKFold(group = groups)
}




