library(clue)

function_to_run <- function() {
    type <- "partition"
    name <- "SE"
    clue:::.make_db_key(name = tolower(name), type = type)
}




