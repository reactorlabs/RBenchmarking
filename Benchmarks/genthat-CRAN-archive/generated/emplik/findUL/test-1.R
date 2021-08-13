library(emplik)

function_to_run <- function() {
    myfun6 <- genthat::with_env(function(theta, x, d) {
        el.cen.EM2(x, d, fun = function(t) {
            t
        }, mu = theta)
    }, env = list2env(list(el.cen.EM2 = emplik::el.cen.EM2), parent = baseenv()))
    x <- c(1, 1.5, 2, 3, 4, 5, 6, 5, 4, 1, 2, 4.5)
    d <- c(1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1)
    emplik:::findUL(step = 0.2, fun = myfun6, MLE = 4.0659, x = x, d = d)
}




