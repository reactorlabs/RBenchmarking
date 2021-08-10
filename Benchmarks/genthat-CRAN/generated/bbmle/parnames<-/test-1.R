library(bbmle)

function_to_run <- function() {
    bbmle:::`parnames<-`(obj = genthat::with_env(function(p) {
        a <- p[1]
        b <- p[2]
        -sum(dbinom(y, prob = a * x/(b + x), size = 10, log = TRUE))
    }, env = list2env(list(y = c(8L, 7L, 8L, 8L, 9L), x = 1:5, dbinom = stats::dbinom), parent = baseenv())), value = c("a", 
        "b"))
}




