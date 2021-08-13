

genthat_extracted_call <- function() {
    replace_vector <- genthat::with_env(function(x, i, value) {
        .GlobalEnv$i <- i
        .GlobalEnv$value <- value
        with(.GlobalEnv, b[i] <- value)
        return(x)
    }, env = list2env(list(), parent = baseenv()))
    replace_matrix <- genthat::with_env(function(x, i, j, value) {
        .GlobalEnv$i <- i
        .GlobalEnv$j <- j
        .GlobalEnv$value <- value
        with(.GlobalEnv, b[i, j] <- value)
        return(x)
    }, env = list2env(list(), parent = baseenv()))
    crochet:::replace(replace_vector = replace_vector, replace_matrix = replace_matrix)
}




