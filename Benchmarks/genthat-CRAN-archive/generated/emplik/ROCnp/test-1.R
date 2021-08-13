

genthat_extracted_call <- function() {
    rexp <- stats::rexp
    emplik:::ROCnp(t1 = rexp(100), d1 = rep(1, 100), t2 = rexp(120), d2 = rep(1, 120), b0 = 0.5, t0 = 0.5)
}




