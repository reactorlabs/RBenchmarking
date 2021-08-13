

genthat_extracted_call <- function() {
    Ynames <- "C"
    times <- 1:365
    events <- list(func = genthat::with_env(function(t, y, p) y/2, env = list2env(list(), parent = baseenv())), time = c(50.1, 
        200, 210.5))
    dllname <- "deSolve"
    deSolve:::checkevents(events = events, times = times, vars = Ynames, dllname = dllname)
}




