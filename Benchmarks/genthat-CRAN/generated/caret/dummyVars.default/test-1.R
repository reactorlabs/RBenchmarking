library(caret)

function_to_run <- function() {
    when <- structure(list(time = structure(c(2L, 3L, 2L, 1L, 1L, 1L, 1L, 2L, 2L), .Label = c("morning", "afternoon", "night"), 
        class = "factor"), day = structure(c(1L, 1L, 1L, 3L, 3L, 5L, 6L, 6L, 5L), .Label = c("Mon", "Tue", "Wed", "Thu", 
        "Fri", "Sat", "Sun"), class = "factor")), row.names = c(NA, -9L), class = "data.frame")
    caret:::dummyVars.default(formula = ~day + time, data = when)
}




