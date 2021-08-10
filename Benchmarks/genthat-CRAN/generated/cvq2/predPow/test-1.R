library(cvq2)

function_to_run <- function() {
    cvq2.sample.D <- structure(list(observed = c(7.7, 9.46, 13.5, 13.76), predicted = c(7.78, 9.34, 12.98, 13.53), observed_mean = c(12.24, 
        11.65, 10.31, 10.22)), class = "data.frame", row.names = c(NA, -4L))
    cvq2:::predPow(data = cvq2.sample.D, obs_mean = "observed_mean")
}




