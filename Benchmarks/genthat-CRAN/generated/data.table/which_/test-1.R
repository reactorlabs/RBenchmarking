library(data.table)

function_to_run <- function() {
    ix <- c(FALSE, TRUE, FALSE)
    data.table:::which_(x = ix, bool = FALSE)
}




