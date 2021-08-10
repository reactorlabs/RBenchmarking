library(brglm)

function_to_run <- function() {
    br.custom.family <- genthat::with_env(function(p) {
        etas <- binomial(logexp(.days))$linkfun(p)
        list(ar = 0.5 * p/p, at = 0.5 + exp(etas) * (1 - p)/(2 * p * .days))
    }, env = list2env(list(logexp = genthat::with_env(function(days = 1) {
        linkfun <- function(mu) qlogis(mu^(1/days))
        linkinv <- function(eta) plogis(eta)^days
        mu.eta <- function(eta) days * plogis(eta)^(days - 1) * binomial()$mu.eta(eta)
        valideta <- function(eta) TRUE
        link <- paste("logexp(", days, ")", sep = "")
        structure(list(linkfun = linkfun, linkinv = linkinv, mu.eta = mu.eta, valideta = valideta, name = link), class = "link-glm")
    }, env = list2env(list(qlogis = stats::qlogis, plogis = stats::plogis), parent = emptyenv())), binomial = stats::binomial, 
        .days = 3), parent = baseenv()))
    brglm:::checkModifications(fun = br.custom.family)
}




