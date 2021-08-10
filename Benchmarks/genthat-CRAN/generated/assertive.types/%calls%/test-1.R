library(assertive.types)

function_to_run <- function() {
    x <- genthat::with_env(function(x, recursive = TRUE, use.names = TRUE) {
        if (.Internal(islistfactor(x, recursive))) {
            URapply <- if (recursive) 
                function(x, Fn) .Internal(unlist(rapply(x, Fn, how = "list"), recursive, FALSE))
            else function(x, Fn) .Internal(unlist(lapply(x, Fn), recursive, FALSE))
            lv <- unique(URapply(x, levels))
            nm <- if (use.names) 
                names(.Internal(unlist(x, recursive, use.names)))
            res <- match(URapply(x, as.character), lv)
            structure(res, levels = lv, names = nm, class = "factor")
        }
        else .Internal(unlist(x, recursive, use.names))
    }, env = .BaseNamespaceEnv)
    assertive.types:::`%calls%`(caller_fn = x, callee_fn_name = ".Internal")
}




