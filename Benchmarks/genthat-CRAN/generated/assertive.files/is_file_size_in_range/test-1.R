library(assertive.files)

function_to_run <- function() {
    assertive.files:::is_file_size_in_range(x = "/tmp/Rtmp5cgzag/file25e744b5dc428", lower = 100, upper = Inf, lower_is_strict = FALSE, 
        upper_is_strict = FALSE, .xname = "tf")
}




