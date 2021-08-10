library(ergm)

function_to_run <- function() {
    x <- structure(list(formula = flomarriage ~ edges + kstar(2), correlation = FALSE, degeneracy.value = NULL, offset = c(FALSE, 
        FALSE), drop = c(0, 0), estimable = c(TRUE, TRUE), covariance = FALSE, pseudolikelihood = FALSE, independence = FALSE, 
        estimate = "MLE", control = structure(list(drop = TRUE, init = structure(c(-1.66453403847315, 0.0117727437777857), 
            names = c("edges", "kstar2")), init.method = "MPLE", main.method = "MCMLE", force.main = FALSE, main.hessian = TRUE, 
            checkpoint = NULL, resume = NULL, MPLE.max.dyad.types = 1e+06, MPLE.samplesize = 50000, MPLE.type = "glm", MCMC.prop.weights = "default", 
            MCMC.prop.args = list(), MCMC.interval = 1024, MCMC.burnin = 16384, MCMC.samplesize = 4096, MCMC.effectiveSize.damp = 10, 
            MCMC.effectiveSize.maxruns = 1000, MCMC.effectiveSize.base = 0.5, MCMC.effectiveSize.points = 5, MCMC.effectiveSize.order = 1, 
            MCMC.return.stats = TRUE, MCMC.runtime.traceplot = FALSE, MCMC.init.maxedges = 10000, MCMC.max.maxedges = 10000, 
            MCMC.addto.se = TRUE, MCMC.compress = FALSE, MCMC.packagenames = NULL, SAN.maxit = 4, SAN.nsteps.times = 8, SAN.control = structure(list(SAN.maxit = 4, 
                SAN.tau = 1, SAN.invcov = NULL, SAN.invcov.diag = FALSE, SAN.nsteps.alloc = genthat::with_env(function(nsim) 2^seq_len(nsim), 
                  env = list2env(list(), parent = baseenv())), SAN.nsteps = 131072, SAN.samplesize = 1024, SAN.init.maxedges = 20000, 
                SAN.max.maxedges = Inf, SAN.prop.weights = "default", SAN.prop.args = list(), SAN.packagenames = NULL, term.options = NULL, 
                seed = NULL, parallel = 0, parallel.type = NULL, parallel.version.check = TRUE), class = c("control.san", 
                "control.list", "list")), MCMLE.termination = "Hummel", MCMLE.maxit = 20, MCMLE.conv.min.pval = 0.5, MCMLE.NR.maxit = 100, 
            MCMLE.NR.reltol = 1.49011611938477e-08, obs.MCMC.samplesize = 1024, obs.MCMC.interval = 1024, obs.MCMC.burnin = 16384, 
            obs.MCMC.burnin.min = 1638.4, obs.MCMC.prop.weights = "default", obs.MCMC.prop.args = list(), obs.MCMC.impute.min_informative = genthat::with_env(function(nw) network.size(nw)/4, 
                env = list2env(list(network.size = network::network.size), parent = baseenv())), obs.MCMC.impute.default_density = genthat::with_env(function(nw) 2/network.size(nw), 
                env = list2env(list(network.size = network::network.size), parent = baseenv())), MCMLE.check.degeneracy = FALSE, 
            MCMLE.MCMC.precision = 0.005, MCMLE.MCMC.max.ESS.frac = 0.1, MCMLE.metric = "lognormal", MCMLE.method = "BFGS", 
            MCMLE.trustregion = 20, MCMLE.dampening = FALSE, MCMLE.dampening.min.ess = 20, MCMLE.dampening.level = 0.1, MCMLE.steplength.margin = 0.05, 
            MCMLE.steplength = 1, MCMLE.adaptive.trustregion = 3, MCMLE.sequential = TRUE, MCMLE.density.guard.min = 10000, 
            MCMLE.density.guard = 20.0855369231877, MCMLE.effectiveSize = NULL, MCMLE.last.boost = 4, MCMLE.Hummel.esteq = TRUE, 
            MCMLE.Hummel.miss.sample = 100, MCMLE.Hummel.maxit = 25, MCMLE.steplength.min = 1e-04, MCMLE.effectiveSize.interval_drop = 2, 
            MCMLE.save_intermediates = NULL, SA.phase1_n = NULL, SA.initial_gain = NULL, SA.nsubphases = 4, SA.niterations = NULL, 
            SA.phase3_n = NULL, SA.trustregion = 0.5, RM.phase1n_base = 7, RM.phase2n_base = 100, RM.phase2sub = 7, RM.init_gain = 0.5, 
            RM.phase3n = 500, Step.MCMC.samplesize = 100, Step.maxit = 50, Step.gridsize = 100, CD.nsteps = 8, CD.multiplicity = 1, 
            CD.nsteps.obs = 128, CD.multiplicity.obs = 1, CD.maxit = 60, CD.conv.min.pval = 0.5, CD.NR.maxit = 100, CD.NR.reltol = 1.49011611938477e-08, 
            CD.metric = "naive", CD.method = "BFGS", CD.trustregion = 20, CD.dampening = FALSE, CD.dampening.min.ess = 20, 
            CD.dampening.level = 0.1, CD.steplength.margin = 0.5, CD.steplength = 1, CD.adaptive.trustregion = 3, CD.adaptive.epsilon = 0.01, 
            CD.Hummel.esteq = TRUE, CD.Hummel.miss.sample = 100, CD.Hummel.maxit = 25, CD.steplength.min = 1e-04, loglik.control = structure(list(nsteps = 20, 
                MCMC.burnin = NULL, MCMC.interval = NULL, MCMC.samplesize = NULL, obs.MCMC.samplesize = NULL, obs.MCMC.interval = NULL, 
                obs.MCMC.burnin = NULL, MCMC.prop.weights = NULL, MCMC.prop.args = NULL, warn.dyads = NULL, MCMC.init.maxedges = NULL, 
                MCMC.packagenames = NULL, term.options = NULL, seed = NULL, parallel = NULL, parallel.type = NULL, parallel.version.check = TRUE), 
                class = c("control.logLik.ergm", "control.list", "list")), term.options = NULL, seed = NULL, parallel = 0, 
            parallel.type = NULL, parallel.version.check = TRUE, MCMC.base.samplesize = 1024, obs.MCMC.base.samplesize = 1024), 
            class = c("control.ergm", "control.list", "list")), samplesize = 4096, iterations = "2 out of 20", null.lik.0 = FALSE, 
        objname = "gest", coefs = structure(list(Estimate = c(-1.65816169385355, 0.0107969962199571), `Std. Error` = c(0.856732234544933, 
            0.173668235556377), `z value` = c(-1.93544917185742, 0.0621702419291992), `Pr(>|z|)` = c(0.0529352002325796, 
            0.950427260133283)), class = "data.frame", row.names = c("edges", "kstar2")), coefficients = structure(list(Estimate = c(-1.65816169385355, 
            0.0107969962199571), `Std. Error` = c(0.856732234544933, 0.173668235556377), `MCMC %` = c(0, 0), `z value` = c(-1.93544917185742, 
            0.0621702419291992), `Pr(>|z|)` = c(0.0529352002325796, 0.950427260133283)), class = "data.frame", row.names = c("edges", 
            "kstar2")), asycov = structure(c(0.733990121708354, -0.142652392039022, -0.142652392039022, 0.0301606560412651), 
            .Dim = c(2L, 2L), .Dimnames = list(c("edges", "kstar2"), c("edges", "kstar2"))), asyse = structure(c(0.856732234544933, 
            0.173668235556377), names = c("edges", "kstar2"))), class = "summary.ergm")
    ergm:::print.summary.ergm(x = x)
}




