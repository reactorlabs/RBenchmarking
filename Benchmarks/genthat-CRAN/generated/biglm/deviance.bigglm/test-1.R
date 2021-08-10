library(biglm)

function_to_run <- function() {
    bigglm <- biglm::bigglm
    ff <- log(Volume) ~ log(Girth) + log(Height)
    trees <- structure(list(Girth = c(8.3, 8.6, 8.8, 10.5, 10.7, 10.8, 11, 11, 11.1, 11.2, 11.3, 11.4, 11.4, 11.7, 12, 12.9, 
        12.9, 13.3, 13.7, 13.8, 14, 14.2, 14.5, 16, 16.3, 17.3, 17.5, 17.9, 18, 18, 20.6), Height = c(70, 65, 63, 72, 81, 
        83, 66, 75, 80, 75, 79, 76, 76, 69, 75, 74, 85, 86, 71, 64, 78, 80, 74, 72, 77, 81, 82, 80, 80, 80, 87), Volume = c(10.3, 
        10.3, 10.2, 16.4, 18.8, 19.7, 15.6, 18.2, 22.6, 19.9, 24.2, 21, 21.4, 21.3, 19.1, 22.2, 33.8, 27.4, 25.7, 24.9, 34.5, 
        31.7, 36.3, 38.3, 42.6, 55.4, 55.7, 58.3, 51.5, 51, 77)), class = "data.frame", row.names = c(NA, -31L))
    object <- structure(list(call = bigglm(ff, data = trees, chunksize = 10, sandwich = TRUE), qr = structure(list(D = c(31, 
        1.637533565667, 0.158482336758735), rbar = c(2.55733343471497, 4.32723209681184, 0.194535388674822), thetab = c(3.272731722267, 
        2.1999699320931, 1.11712333313337), ss = 0.185463372769671, checked = FALSE, tol = c(0, 0, 0)), class = "bigqr"), 
        iterations = 3L, assign = 0:2, terms = log(Volume) ~ log(Girth) + log(Height), converged = TRUE, n = 31, names = c("(Intercept)", 
            "log(Girth)", "log(Height)"), weights = NULL, rss = 0.185463372769671, sandwich = list(xy = structure(list(D = c(340.342650229002, 
            17.4811633474581, 1.55449304316544, 0.0401218915317765, 0.0232395224165397, 0.00158012435479558, 1.01830753677498e-34, 
            0.000922544600185483, 0.000316114108979292, 1.08420059239622e-35, 1.14032826548689e-35, 0.000457714665484459), 
            rbar = c(2.62717365978773, 4.3438716016942, 0.298095708316347, 0.772915114731107, 1.29250866702504, 0.772915114731107, 
                2.01967955845699, 3.35416501352114, 1.29250866702504, 3.35416501352114, 5.60615294765602, 0.178738114325619, 
                -0.199248370727489, -0.212265298535967, -0.807572967185124, -0.212265298535967, 0.228805945609064, -0.777445973744973, 
                -0.807572967185124, -0.777445973744973, -3.2611453395593, -0.120766913852974, -0.291253342826246, -0.202463853237539, 
                -0.291253342826246, -0.719783941172652, -0.457796804299265, -0.202463853237539, -0.457796804299265, 0.4967470672116, 
                1.6814013969686, 4.04458990167942, 1.6814013969686, 3.28980160554072, 6.98830503341997, 4.04458990167942, 
                6.98830503341997, 16.385780484545, 0.289465818335379, 1, 3.6975359360516, 4.650116266864, 0.289465818335379, 
                4.650116266864, 2.43950275611036, 5.9048294328215e-17, 0.639007856357539, 1.36289266489068, 1, 1.36289266489068, 
                7.9592741011482, -65196599308439.9, 386431495092287, 0.129196492192531, 386431495092287, -725741959784950, 
                -0.0976298204858118, 1.23072506553517e-17, -0.0976298204858118, 0.265790862235, 1.14335872174731e-17, 1, 
                -1.04703838447474, 0.00469316687345686, 247858624636773, 406272375554516), thetab = c(0, 0, 0, 0, 0, 0, 0, 
                0, 0, 0, 0, 0), ss = 0, checked = FALSE, tol = c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)), class = "bigqr")), 
        family = structure(list(family = "gaussian", link = "identity", linkfun = genthat::with_env(function(mu) mu, env = getNamespace("stats")), 
            linkinv = genthat::with_env(function(eta) eta, env = getNamespace("stats")), variance = genthat::with_env(function(mu) rep.int(1, 
                length(mu)), env = list2env(list(), parent = baseenv())), dev.resids = genthat::with_env(function(y, mu, 
                wt) wt * ((y - mu)^2), env = list2env(list(), parent = baseenv())), aic = genthat::with_env(function(y, n, 
                mu, wt, dev) {
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
    biglm:::deviance.bigglm(object = object)
}




