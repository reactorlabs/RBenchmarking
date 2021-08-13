

genthat_extracted_call <- function() {
    rnorm <- stats::rnorm
    conicfit:::calculateEllipse(x = 0, y = 0, a = 200, b = 100, angle = 45, steps = 50, randomDist = TRUE, noiseFun = function(x) (x + 
        rnorm(1, mean = 0, sd = 50)))
}




