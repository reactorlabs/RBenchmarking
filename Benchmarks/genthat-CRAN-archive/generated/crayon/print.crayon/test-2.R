

genthat_extracted_call <- function() {
    x <- genthat::with_env(structure(function(...) {
        `__genthat_captured_seed` <- get(".Random.seed", envir = globalenv())
        ""
        on.exit({
            if (.Internal(getOption("genthat.tracing"))) {
                .Internal(options(genthat.tracing = FALSE))
                default <- genthat:::`__genthat_default_retv`
                retv <- returnValue(default = default)
                if (!identical(retv, default) && !genthat:::is_exception_returnValue(retv)) {
                  genthat:::record_trace(name = "crayon_template", pkg = "crayon", args = as.list(match.call())[-1], retv = retv, 
                    seed = `__genthat_captured_seed`, env = parent.frame())
                }
                .Internal(options(genthat.tracing = TRUE))
            }
        })
        {
            my_styles <- attr(sys.function(), "_styles")
            text <- mypaste(...)
            if (has_color()) {
                for (st in rev(my_styles)) {
                  text <- st$open %+% gsub(st$close, st$open, text, fixed = TRUE) %+% st$close
                }
            }
            text
        }
    }, `\`_styles\`` = structure(list(structure(list("\033[90m", "\033[39m"), .Names = c("open", "close"))), .Names = "pink"), 
        class = "crayon"), env = getNamespace("crayon"))
    crayon:::print.crayon(x = x)
}




