

genthat_extracted_call <- function() {
    x <- c(1, 1.5, 2, 3, 4, 5, 6, 5, 4, 1, 2, 4.5)
    theta <- 4.7999
    d <- c(1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1)
    emplik:::el.cen.EM2(x = x, d = d, fun = function(t) {
        t
    }, mu = theta)
}




