library(chron)

function_to_run <- function() {
    ans <- structure(c(0, 172800, 345600, 518400, 691200, 864000, 1036800), class = c("POSIXct", "POSIXt"), tzone = "GMT", 
        labels = c("Jan 01", "Jan 03", "Jan 05", "Jan 07", "Jan 09", "Jan 11", "Jan 13"))
    chron:::as.chron.POSIXt(x = ans)
}




