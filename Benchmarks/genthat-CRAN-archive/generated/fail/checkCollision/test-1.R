

genthat_extracted_call <- function() {
    Ls <- fail:::Ls
    .self <- list(path = "/tmp/Rtmp5pSR3b/3a0e767e95e03", extension = "RData", all.files = FALSE, use.cache = FALSE, simplify = TRUE, 
        cache = list(keys = genthat::with_env(function() ls(ee, all.names = TRUE), env = list2env(list(ee = list2env(list(), 
            parent = emptyenv())), parent = baseenv())), get = genthat::with_env(function(key) get(key, envir = ee), env = list2env(list(ee = list2env(list(), 
            parent = emptyenv())), parent = baseenv())), put = genthat::with_env(function(key, value) assign(key, value, 
            envir = ee), env = list2env(list(ee = list2env(list(), parent = emptyenv())), parent = baseenv())), rm = genthat::with_env(function(keys) {
            x <- intersect(keys, keys())
            rm(list = x, envir = ee)
            x
        }, env = list2env(list(ee = list2env(list(), parent = emptyenv())), parent = baseenv())), exists = genthat::with_env(function(key) exists(key, 
            envir = ee), env = list2env(list(ee = list2env(list(), parent = emptyenv())), parent = baseenv()))), loadFun = genthat::with_env(function(.self, 
            fn) {
            `__genthat_captured_seed` <- get(".Random.seed", envir = globalenv())
            ""
            on.exit({
                if (.Internal(getOption("genthat.tracing"))) {
                  .Internal(options(genthat.tracing = FALSE))
                  default <- genthat:::`__genthat_default_retv`
                  retv <- returnValue(default = default)
                  if (!identical(retv, default) && !genthat:::is_exception_returnValue(retv)) {
                    genthat:::record_trace(name = "loadRData", pkg = "fail", args = as.list(match.call())[-1], retv = retv, 
                      seed = `__genthat_captured_seed`, env = parent.frame())
                  }
                  .Internal(options(genthat.tracing = TRUE))
                }
            })
            {
                ee <- new.env(parent = emptyenv(), hash = FALSE)
                ns <- load(fn, envir = ee)
                if (.self$simplify && length(ns) == 1L) return(ee[[ns]])
                return(as.list(ee))
            }
        }, env = getNamespace("fail")), saveFun = genthat::with_env(function(.self, fn, key, value) {
            `__genthat_captured_seed` <- get(".Random.seed", envir = globalenv())
            ""
            on.exit({
                if (.Internal(getOption("genthat.tracing"))) {
                  .Internal(options(genthat.tracing = FALSE))
                  default <- genthat:::`__genthat_default_retv`
                  retv <- returnValue(default = default)
                  if (!identical(retv, default) && !genthat:::is_exception_returnValue(retv)) {
                    genthat:::record_trace(name = "saveRData", pkg = "fail", args = as.list(match.call())[-1], retv = retv, 
                      seed = `__genthat_captured_seed`, env = parent.frame())
                  }
                  .Internal(options(genthat.tracing = TRUE))
                }
            })
            {
                ee <- new.env(parent = emptyenv(), hash = FALSE)
                assign(key, value, envir = ee)
                save(list = key, envir = ee, file = fn)
                return(invisible(key))
            }
        }, env = getNamespace("fail")))
    fail:::checkCollision(keys = Ls(.self))
}




