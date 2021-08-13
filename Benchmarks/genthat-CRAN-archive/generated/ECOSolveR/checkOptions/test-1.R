library(ECOSolveR)

function_to_run <- function() {
    control <- list(MAXIT = 100L, FEASTOL = 1e-08, RELTOL = 1e-08, ABSTOL = 1e-08, FEASTOL_INACC = 1e-04, ABSTOL_INACC = 5e-05, 
        RELTOL_INACC = 5e-05, VERBOSE = 1L, MI_MAX_ITERS = 1000L, MI_INT_TOL = 1e-04, MI_ABS_EPS = 1e-06, MI_REL_EPS = 1e-06)
    ECOSolveR:::checkOptions(control = control)
}




