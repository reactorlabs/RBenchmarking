library(chron)

function_to_run <- function() {
    chron <- chron::chron
    chron:::format.chron(x = chron(0, 0), format = c("yy/m/d", "h:m:s"), sep = "T", enclosed = c("", ""))
}




