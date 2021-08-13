

genthat_extracted_call <- function() {
    x <- c(1, 1.5, 2, 3, 4, 5, 6, 5, 4, 1, 2, 4.5)
    d <- c(1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1)
    emplik:::el.cen.test(x = x, d = d, mu = 3.5)
}




