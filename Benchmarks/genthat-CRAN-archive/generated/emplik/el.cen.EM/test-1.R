

genthat_extracted_call <- function() {
    xx <- c(1, 1.5, 2, 3, 4, 5, 6, 4, 1, 4.5)
    wt <- c(1, 1, 2, 1, 1, 2, 1, 1, 1, 1)
    dd <- c(1, 1, 0, 1, 0, 1, 1, 1, 0, 1)
    emplik:::el.cen.EM(x = xx, d = dd, wt = wt, mu = 3.5)
}




