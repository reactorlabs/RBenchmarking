library(crul)

function_to_run <- function() {
    opts <- list(opts = list(post = TRUE, postfieldsize = 0L, postfields = raw(0)))
    crul:::ccp(x = as.list(opts$opts))
}




