library(EQL)

function_to_run <- function() {
    cc <- structure(list(K = genthat::with_env(function(x) cgf.deriv(0, x, ...), env = list2env(list(cgf.deriv = genthat::with_env(function(n, 
        x, mu, sigma2) {
        if (n <= 2) {
            switch(n + 1, return(mu * x + sigma2 * x^2/2), return(mu + sigma2 * x), return(rep(sigma2, length(x))))
        } else {
            return(rep(0, length(x)))
        }
    }, env = list2env(list(), parent = baseenv()))), parent = baseenv())), mu.inv = genthat::with_env(function(x) {
        if (any(!liesWithin(x, domain))) {
            stop("Variable 'x' outside the domain!")
        }
        saddlef(x, ...)
    }, env = list2env(list(saddlef = genthat::with_env(function(x, mu, sigma2) (x - mu)/sigma2, env = list2env(list(), parent = baseenv())), 
        liesWithin = ttutils::liesWithin, domain = structure(list(lower = -Inf, upper = Inf, left = ">=", right = "<="), 
            class = "interval")), parent = baseenv())), kappa2 = genthat::with_env(function(x) cgf.deriv(2, x, ...), env = list2env(list(cgf.deriv = genthat::with_env(function(n, 
        x, mu, sigma2) {
        if (n <= 2) {
            switch(n + 1, return(mu * x + sigma2 * x^2/2), return(mu + sigma2 * x), return(rep(sigma2, length(x))))
        } else {
            return(rep(0, length(x)))
        }
    }, env = list2env(list(), parent = baseenv()))), parent = baseenv())), rho3 = genthat::with_env(function(x) cgf.deriv(3, 
        x, ...)/(kappa2(x)^(3/2)), env = list2env(list(kappa2 = genthat::with_env(function(x) cgf.deriv(2, x, ...), env = list2env(list(cgf.deriv = genthat::with_env(function(n, 
        x, mu, sigma2) {
        if (n <= 2) {
            switch(n + 1, return(mu * x + sigma2 * x^2/2), return(mu + sigma2 * x), return(rep(sigma2, length(x))))
        } else {
            return(rep(0, length(x)))
        }
    }, env = list2env(list(), parent = baseenv()))), parent = baseenv())), cgf.deriv = genthat::with_env(function(n, x, mu, 
        sigma2) {
        if (n <= 2) {
            switch(n + 1, return(mu * x + sigma2 * x^2/2), return(mu + sigma2 * x), return(rep(sigma2, length(x))))
        } else {
            return(rep(0, length(x)))
        }
    }, env = list2env(list(), parent = baseenv()))), parent = baseenv())), rho4 = genthat::with_env(function(x) cgf.deriv(4, 
        x, ...)/(kappa2(x)^2), env = list2env(list(kappa2 = genthat::with_env(function(x) cgf.deriv(2, x, ...), env = list2env(list(cgf.deriv = genthat::with_env(function(n, 
        x, mu, sigma2) {
        if (n <= 2) {
            switch(n + 1, return(mu * x + sigma2 * x^2/2), return(mu + sigma2 * x), return(rep(sigma2, length(x))))
        } else {
            return(rep(0, length(x)))
        }
    }, env = list2env(list(), parent = baseenv()))), parent = baseenv())), cgf.deriv = genthat::with_env(function(n, x, mu, 
        sigma2) {
        if (n <= 2) {
            switch(n + 1, return(mu * x + sigma2 * x^2/2), return(mu + sigma2 * x), return(rep(sigma2, length(x))))
        } else {
            return(rep(0, length(x)))
        }
    }, env = list2env(list(), parent = baseenv()))), parent = baseenv())), domain = structure(list(lower = -Inf, upper = Inf, 
        left = ">=", right = "<="), class = "interval"), extra.params = structure(c(0, 1), names = c("mu", "sigma2")), type = "implicit", 
        missing = FALSE), class = "cumulants")
    EQL:::check.cumulants(object = cc)
}




