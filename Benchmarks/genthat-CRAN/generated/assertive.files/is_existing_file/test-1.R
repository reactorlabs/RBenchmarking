library(assertive.files)

function_to_run <- function() {
    assertive.files:::is_existing_file(x = "not an existing file (probably)", .xname = "\"not an existing file (probably)\"")
}




