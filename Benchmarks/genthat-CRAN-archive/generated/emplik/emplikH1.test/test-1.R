

genthat_extracted_call <- function() {
    fun <- genthat::with_env(function(x) {
        as.numeric(x <= 6.5)
    }, env = list2env(list(), parent = baseenv()))
    emplik:::emplikH1.test(x = c(1, 2, 3, 4, 5), d = c(1, 1, 0, 1, 1), theta = 2, fun = fun)
}




