library(circular)

function_to_run <- function() {
    dvonmises <- circular::dvonmises
    circular <- circular::circular
    circular:::plot.function.circular(x = function(x) dvonmises(x, circular(0), 10), xlim = c(-1, 2.2))
}




