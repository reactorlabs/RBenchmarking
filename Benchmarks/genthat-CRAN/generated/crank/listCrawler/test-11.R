library(crank)

function_to_run <- function() {
    testlist <- list(list(9, 16), list(25, list(36, 49)))
    crank:::listCrawler(x = testlist, FUN = sqrt)
}




