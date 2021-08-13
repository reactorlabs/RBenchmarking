

genthat_extracted_call <- function() {
    nobs <- 23L
    pl <- FALSE
    family <- structure(list(family = "binomial", link = "probit", linkfun = genthat::with_env(function(mu) qnorm(mu), env = getNamespace("stats")), 
        linkinv = genthat::with_env(function(eta) {
            thresh <- -qnorm(.Machine$double.eps)
            eta <- pmin(pmax(eta, -thresh), thresh)
            pnorm(eta)
        }, env = getNamespace("stats")), variance = genthat::with_env(function(mu) mu * (1 - mu), env = list2env(list(), 
            parent = baseenv())), dev.resids = genthat::with_env(function(y, mu, wt) .Call(C_binomial_dev_resids, y, mu, 
            wt), env = list2env(list(C_binomial_dev_resids = stats:::C_binomial_dev_resids), parent = baseenv())), aic = genthat::with_env(function(y, 
            n, mu, wt, dev) {
            m <- if (any(n > 1)) n else wt
            -2 * sum(ifelse(m > 0, (wt/m), 0) * dbinom(round(m * y), round(m), mu, log = TRUE))
        }, env = list2env(list(dbinom = stats::dbinom), parent = baseenv())), mu.eta = genthat::with_env(function(eta) pmax(dnorm(eta), 
            .Machine$double.eps), env = getNamespace("stats")), initialize = expression({
            if (NCOL(y) == 1) {
                if (is.factor(y)) y <- y != levels(y)[1L]
                n <- rep.int(1, nobs)
                y[weights == 0] <- 0
                if (any(y < 0 | y > 1)) stop("y values must be 0 <= y <= 1")
                mustart <- (weights * y + 0.5)/(weights + 1)
                m <- weights * y
                if (any(abs(m - round(m)) > 0.001)) warning("non-integer #successes in a binomial glm!")
            } else if (NCOL(y) == 2) {
                if (any(abs(y - round(y)) > 0.001)) warning("non-integer counts in a binomial glm!")
                n <- y[, 1] + y[, 2]
                y <- ifelse(n == 0, 0, y[, 1]/n)
                weights <- weights * n
                mustart <- (n * y + 0.5)/(n + 1)
            } else stop("for the 'binomial' family, y must be a vector of 0 and 1's\nor a 2 column matrix where col 1 is no. successes and col 2 is no. failures")
        }), validmu = genthat::with_env(function(mu) all(is.finite(mu)) && all(mu > 0 & mu < 1), env = list2env(list(), parent = baseenv())), 
        valideta = genthat::with_env(function(eta) TRUE, env = getNamespace("stats")), simulate = genthat::with_env(function(object, 
            nsim) {
            ftd <- fitted(object)
            n <- length(ftd)
            ntot <- n * nsim
            wts <- object$prior.weights
            if (any(wts%%1 != 0)) stop("cannot simulate from non-integer prior.weights")
            if (!is.null(m <- object$model)) {
                y <- model.response(m)
                if (is.factor(y)) {
                  yy <- factor(1 + rbinom(ntot, size = 1, prob = ftd), labels = levels(y))
                  split(yy, rep(seq_len(nsim), each = n))
                } else if (is.matrix(y) && ncol(y) == 2) {
                  yy <- vector("list", nsim)
                  for (i in seq_len(nsim)) {
                    Y <- rbinom(n, size = wts, prob = ftd)
                    YY <- cbind(Y, wts - Y)
                    colnames(YY) <- colnames(y)
                    yy[[i]] <- YY
                  }
                  yy
                } else rbinom(ntot, size = wts, prob = ftd)/wts
            } else rbinom(ntot, size = wts, prob = ftd)/wts
        }, env = list2env(list(rbinom = stats::rbinom, model.response = stats::model.response, fitted = stats::fitted), parent = baseenv()))), 
        class = "family")
    brglm:::modifications(family = family, pl = pl)
}




