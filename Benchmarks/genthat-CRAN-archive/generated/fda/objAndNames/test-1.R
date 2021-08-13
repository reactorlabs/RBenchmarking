library(fda)

function_to_run <- function() {
    fda:::objAndNames(object = 1:2, preferred = list(letters[1:2], LETTERS[1:2]), default = anything)
}




