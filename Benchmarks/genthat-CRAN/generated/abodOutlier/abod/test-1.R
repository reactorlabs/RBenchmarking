library(abodOutlier)

function_to_run <- function() {
    faithful <- datasets::faithful
    abodOutlier:::abod(data = faithful, method = "randomized", n_sample_size = 5)
}




