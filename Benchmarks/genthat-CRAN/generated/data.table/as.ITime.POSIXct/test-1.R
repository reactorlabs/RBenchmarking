library(data.table)

function_to_run <- function() {
    x <- structure(c(978307200, 978325200, 978343200, 978361200, 978379200, 978397200, 978415200, 978433200, 978451200, 978469200), 
        class = c("POSIXct", "POSIXt"), tzone = "")
    data.table:::as.ITime.POSIXct(x = x)
}




