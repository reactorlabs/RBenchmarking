library(crul)

function_to_run <- function() {
    proxy <- crul::proxy
    crul:::set_proxy(x = proxy("http://97.77.104.22:3128"))
}




