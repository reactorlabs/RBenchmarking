

genthat_extracted_call <- function() {
    BBmisc:::suppressAll(expr = {
        print("foo")
        message("foo")
        warning("foo")
    })
}




