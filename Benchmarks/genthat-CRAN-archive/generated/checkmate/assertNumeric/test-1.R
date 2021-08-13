

genthat_extracted_call <- function() {
    x <- "a"
    coll <- structure(list(push = genthat::with_env(function(msg) msgs <<- c(msgs, msg), env = list2env(list(msgs = c("Variable 'x': Must be of type 'numeric', not 'character'.", 
        "Custom error message")), parent = baseenv())), getMessages = genthat::with_env(function() msgs, env = list2env(list(msgs = c("Variable 'x': Must be of type 'numeric', not 'character'.", 
        "Custom error message")), parent = baseenv())), isEmpty = genthat::with_env(function() length(msgs) == 0L, env = list2env(list(msgs = c("Variable 'x': Must be of type 'numeric', not 'character'.", 
        "Custom error message")), parent = baseenv()))), class = "AssertCollection")
    checkmate:::assertNumeric(x = x, add = coll)
}




