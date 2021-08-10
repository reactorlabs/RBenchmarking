library(assertive.files)

function_to_run <- function() {
    files <- c("as.character.file.Rd.R", "is_connection.Rd.R", "is_dir.Rd.R", "is_empty_file.Rd.R", "is_executable_file.Rd.R", 
        "is_existing_file.Rd.R", "is_library.Rd.R")
    assertive.files:::is_readable_file(x = files)
}




