library(assertive.files)

function_to_run <- function() {
    assertive.files:::is_dir(x = "/usr/lib/R", .xname = "R.home()")
}




