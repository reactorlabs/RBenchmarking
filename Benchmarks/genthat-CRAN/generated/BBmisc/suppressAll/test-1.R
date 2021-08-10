library(BBmisc)

function_to_run <- function() {
    BBmisc:::suppressAll(expr = {
        print("foo")
        message("foo")
        warning("foo")
    })
}




