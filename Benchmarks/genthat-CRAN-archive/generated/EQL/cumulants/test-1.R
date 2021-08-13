

genthat_extracted_call <- function() {
    saddlef <- genthat::with_env(function(x, mu, sigma2) (x - mu)/sigma2, env = list2env(list(), parent = baseenv()))
    rho4 <- genthat::with_env(function(x, mu, sigma2) rep(0, length(x)), env = list2env(list(), parent = baseenv()))
    rho3 <- genthat::with_env(function(x, mu, sigma2) rep(0, length(x)), env = list2env(list(), parent = baseenv()))
    kappa2 <- genthat::with_env(function(x, mu, sigma2) rep(sigma2, length(x)), env = list2env(list(), parent = baseenv()))
    cgf <- genthat::with_env(function(x, mu, sigma2) mu * x + sigma2 * x^2/2, env = list2env(list(), parent = baseenv()))
    EQL:::cumulants(saddlef = saddlef, cgf = cgf, kappa2f = kappa2, rho3f = rho3, rho4f = rho4, mu = 0, sigma2 = 1)
}




