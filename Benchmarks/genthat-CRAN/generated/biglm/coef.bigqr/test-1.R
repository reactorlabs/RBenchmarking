

genthat_extracted_call <- function() {
    bigglm <- biglm::bigglm
    gg <- log(Volume) ~ log(Girth) + log(Height) + offset(2 * log(Girth) + log(Height))
    trees <- structure(list(Girth = c(8.3, 8.6, 8.8, 10.5, 10.7, 10.8, 11, 11, 11.1, 11.2, 11.3, 11.4, 11.4, 11.7, 12, 12.9, 
        12.9, 13.3, 13.7, 13.8, 14, 14.2, 14.5, 16, 16.3, 17.3, 17.5, 17.9, 18, 18, 20.6), Height = c(70, 65, 63, 72, 81, 
        83, 66, 75, 80, 75, 79, 76, 76, 69, 75, 74, 85, 86, 71, 64, 78, 80, 74, 72, 77, 81, 82, 80, 80, 80, 87), Volume = c(10.3, 
        10.3, 10.2, 16.4, 18.8, 19.7, 15.6, 18.2, 22.6, 19.9, 24.2, 21, 21.4, 21.3, 19.1, 22.2, 33.8, 27.4, 25.7, 24.9, 34.5, 
        31.7, 36.3, 38.3, 42.6, 55.4, 55.7, 58.3, 51.5, 51, 77)), class = "data.frame", row.names = c(NA, -31L))
    object <- structure(list(call = bigglm(gg, data = trees, chunksize = 10, sandwich = TRUE), qr = structure(list(D = c(31, 
        1.637533565667, 0.158482336758735), rbar = c(2.55733343471497, 4.32723209681184, 0.194535388674822), thetab = c(-6.16916724397478, 
        0.00543454341827595, 0.117123333133376), ss = 0.18546337276967, checked = TRUE, tol = c(5.56776436283002e-12, 1.55182914660108e-11, 
        2.47400465072897e-11)), class = "bigqr"), iterations = 3L, assign = 0:2, terms = log(Volume) ~ log(Girth) + log(Height) + 
        offset(2 * log(Girth) + log(Height)), converged = TRUE, n = 31, names = c("(Intercept)", "log(Girth)", "log(Height)"), 
        weights = NULL, rss = 0.185463372769671, sandwich = list(xy = structure(list(D = c(1180.0050447851, 62.1257366029957, 
            6.05018489868778, 0.00487726753564567, 9.66986097311207e-05, 1.97397398151197e-05, 1.68162233662753e-36, 0.102441279414591, 
            0.00337454630586277, 7.23322340745924e-39, 1.23076045363796e-35, 0.00128805131140499), rbar = c(2.55724272586869, 
            4.32702437819539, -0.162070649958998, -0.414461150223409, -0.701300120901793, -0.414461150223409, -1.06844347071778, 
            -1.79508918770922, -0.701300120901793, -1.79508918770922, -3.03576752910625, 0.194720304136456, -0.000135986992514916, 
            -0.162695535961753, -0.0321860700426699, -0.162695535961753, -0.835264087965619, -0.784089440887929, -0.0321860700426699, 
            -0.784089440887929, -0.274648834463698, -0.00293986475901486, -0.00736639736392326, -0.174527221080661, -0.00736639736392326, 
            -0.0031555617730788, -0.433244490770317, -0.174527221080661, -0.433244490770317, -1.44796949901734, 2.57239221933856, 
            4.35675508685755, 2.57239221933856, 7.25893333649011, 11.3372987196053, 4.35675508685755, 11.3372987196053, 18.9775972168444, 
            0.12098194321618, 1, 1.647986250598, 4.42370310844377, 0.12098194321618, 4.42370310844377, 0.928585284158987, 
            -4.10630087103592e-17, -12.6906099737599, -1.75967184177069, 1, -1.75967184177069, 7.87985143811623, 31063892183115076, 
            12757042780101044, -0.0192515510721685, 12757042780101044, 2440697521491624, 0.302616923010069, -3.59930316648232e-20, 
            0.302616923010069, 0.0525498412557693, 2.49817949707149e-19, 1, 0.319775076776332, -5.90979131983304, 27277139501204060, 
            -1945328340103810), thetab = c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), ss = 0, checked = FALSE, tol = c(0, 0, 0, 
            0, 0, 0, 0, 0, 0, 0, 0, 0)), class = "bigqr")), family = structure(list(family = "gaussian", link = "identity", 
            linkfun = genthat::with_env(function(mu) mu, env = getNamespace("stats")), linkinv = genthat::with_env(function(eta) eta, 
                env = getNamespace("stats")), variance = genthat::with_env(function(mu) rep.int(1, length(mu)), env = list2env(list(), 
                parent = baseenv())), dev.resids = genthat::with_env(function(y, mu, wt) wt * ((y - mu)^2), env = list2env(list(), 
                parent = baseenv())), aic = genthat::with_env(function(y, n, mu, wt, dev) {
                nobs <- length(y)
                nobs * (log(dev/nobs * 2 * pi) + 1) + 2 - sum(log(wt))
            }, env = list2env(list(), parent = baseenv())), mu.eta = genthat::with_env(function(eta) rep.int(1, length(eta)), 
                env = getNamespace("stats")), initialize = expression({
                n <- rep.int(1, nobs)
                if (is.null(etastart) && is.null(start) && is.null(mustart) && ((family$link == "inverse" && any(y == 0)) || 
                  (family$link == "log" && any(y <= 0)))) stop("cannot find valid starting values: please specify some")
                mustart <- y
            }), validmu = genthat::with_env(function(mu) TRUE, env = list2env(list(), parent = baseenv())), valideta = genthat::with_env(function(eta) TRUE, 
                env = getNamespace("stats"))), class = "family"), deviance = 0.185463372769671, df.resid = 28), class = c("bigglm", 
        "biglm"))
    biglm:::coef.bigqr(bigQR = object$qr)
}




