library(caret)

function_to_run <- function() {
    caret:::createTimeSlices(y = 1:15, initialWindow = 5, horizon = 3, skip = 2)
}




