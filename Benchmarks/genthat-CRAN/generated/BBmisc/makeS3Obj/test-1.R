library(BBmisc)

function_to_run <- function() {
    kill <- genthat::with_env(function(clear = FALSE) {
        if (clear) 
            clear(newline = TRUE)
        else mycat("\n")
        killed <<- TRUE
    }, env = list2env(list(mycat = genthat::with_env(function(...) cat(..., file = stderr()), env = list2env(list(), parent = baseenv())), 
        killed = FALSE), parent = baseenv()))
    draw <- genthat::with_env(function(value, inc, msg) {
        if (!missing(value) && !missing(inc)) 
            stop("You must not set value and inc!")
        else if (!missing(value)) 
            assertNumber(value, lower = max(min, cur.value), upper = max)
        else if (!missing(inc)) {
            assertNumber(inc, lower = 0, upper = max - cur.value)
            value <- cur.value + inc
        }
        else {
            value <- cur.value
        }
        if (!killed) {
            if (value == max) 
                rate <- 1
            else rate <- (value - min)/delta
            bin <- round(rate * bar.width)
            bar[seq(bin)] <<- char
            delta.time <- as.integer(Sys.time()) - start.time
            if (value == min) 
                rest.time <- 0
            else rest.time <- (max - value) * (delta.time/(value - min))
            rest.time <- splitTime(rest.time, "hours")
            if (rest.time["hours"] > 99) 
                rest.time[] <- 99
            mycat(kill.line)
            msg <- sprintf(sprintf("%%%is", label.width), msg)
            mycat(sprintf("%s |%s| %3i%% (%02i:%02i:%02i)", msg, collapse(bar, sep = ""), round(rate * 100), rest.time["hours"], 
                rest.time["minutes"], rest.time["seconds"]))
            if (value == max) 
                kill()
            flush.console()
        }
        cur.value <<- value
    }, env = list2env(list(mycat = genthat::with_env(function(...) cat(..., file = stderr()), env = list2env(list(), parent = baseenv())), 
        kill = genthat::with_env(function(clear = FALSE) {
            if (clear) clear(newline = TRUE) else mycat("\n")
            killed <<- TRUE
        }, env = list2env(list(mycat = genthat::with_env(function(...) cat(..., file = stderr()), env = list2env(list(), 
            parent = emptyenv()))), parent = emptyenv())), start.time = 1628318157L, splitTime = BBmisc::splitTime, min = 0, 
        max = 5, label.width = 8L, killed = FALSE, kill.line = "\r", flush.console = utils::flush.console, delta = 5, cur.value = 0, 
        collapse = BBmisc::collapse, char = "+", bar.width = 51L, bar = c(" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", 
            " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", 
            " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ")), parent = baseenv()))
    label <- "test-bar"
    BBmisc:::makeS3Obj(classes = "ProgressBar", set = function(value, msg = label) draw(value = value, msg = msg), inc = function(inc, 
        msg = label) draw(inc = inc, msg = msg), kill = kill, error = function(e) {
        kill(clear = FALSE)
        stop(e)
    })
}




