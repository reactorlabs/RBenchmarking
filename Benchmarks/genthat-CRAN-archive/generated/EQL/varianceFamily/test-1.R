

genthat_extracted_call <- function() {
    varf <- genthat::with_env(function(y, theta) y^theta, env = list2env(list(), parent = baseenv()))
    validmuf <- genthat::with_env(function(mu, theta) {
        if (theta == 0) {
            return(TRUE)
        }
        else if (theta == 1 | theta == 2 | theta == 3) {
            return(all(mu > 0))
        }
        else {
            return(all(mu > 0))
        }
    }, env = list2env(list(), parent = baseenv()))
    init <- genthat::with_env(function(theta, ...) {
        if (theta == 0) {
            return(expression({
                mustart <- y
                n <- rep.int(1, nobs)
            }))
        }
        else if (theta == 1) {
            return(expression({
                if (any(y < 0)) {
                  stop("'y' must not be negative for theta=1!")
                }
                mustart <- y + 0.1
                n <- rep.int(1, nobs)
            }))
        }
        else {
            return(expression({
                if (any(y <= 0)) {
                  stop("'y' must be postive!")
                }
                mustart <- y
                n <- rep.int(1, nobs)
            }))
        }
    }, env = list2env(list(), parent = baseenv()))
    devf <- genthat::with_env(function(y, mu, theta) {
        if (theta == 1) {
            return(2 * (y * log(ifelse(y == 0, 1, y/mu)) - (y - mu)))
        }
        else if (theta == 2) {
            return(2 * (y/mu - log(ifelse(y == 0, 1, y/mu)) - 1))
        }
        else {
            return(1/((1 - theta) * (2 - theta)) * 2 * (y^(2 - theta) - (2 - theta) * y * mu^(1 - theta) + (1 - theta) * 
                mu^(2 - theta)))
        }
    }, env = list2env(list(), parent = baseenv()))
    link <- "log"
    EQL:::varianceFamily(varf = varf, devf = devf, link = link, initf = init, validmuf = validmuf, name = "Power-Family")
}




