

genthat_extracted_call <- function() {
    assertive.types:::is_language(x = genthat::with_env(function() {
    }, env = list2env(list(), parent = baseenv())), .xname = "function() {}")
}




