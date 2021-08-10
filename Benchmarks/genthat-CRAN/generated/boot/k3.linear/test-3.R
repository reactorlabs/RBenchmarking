library(boot)

function_to_run <- function() {
    ratio <- genthat::with_env(function(d, w) sum(d$x * w)/sum(d$u * w), env = list2env(list(), parent = baseenv()))
    empinf <- boot::empinf
    city <- boot::city
    boot:::k3.linear(L = empinf(data = city, statistic = ratio))
}




