library(DiffNet)

function_to_run <- function() {
    std_perm <- 0
    mu_perm <- 0
    ghd_val <- 0
    DiffNet:::calculate_p_value(mu = mu_perm, std = std_perm, val = ghd_val)
}




