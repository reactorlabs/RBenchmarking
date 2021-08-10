library(backports)

function_to_run <- function() {
    backports:::.valid.factor(object = factor(letters[1:3]))
}




