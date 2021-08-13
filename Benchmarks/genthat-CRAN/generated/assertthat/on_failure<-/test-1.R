

genthat_extracted_call <- function() {
    assertthat:::`on_failure<-`(x = genthat::with_env(function(x) {
        assert_that(is.numeric(x), length(x) == 1)
        x%%2 == 1
    }, env = list2env(list(assert_that = assertthat::assert_that), parent = baseenv())), value = genthat::with_env(function(call, 
        env) {
        paste0(deparse(call$x), " is even")
    }, env = list2env(list(), parent = baseenv())))
}




