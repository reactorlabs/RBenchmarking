

genthat_extracted_call <- function() {
    args <- list(teststat = "scalar", distribution = "exact", alternative = c("two.sided", "less", "greater"), xtrafo = genthat::with_env(function(data, 
        numeric_trafo = id_trafo, factor_trafo = f_trafo, ordered_trafo = of_trafo, surv_trafo = logrank_trafo, var_trafo = NULL, 
        block = NULL) {
        `__genthat_captured_seed` <- get(".Random.seed", envir = globalenv())
        ""
        on.exit({
            if (.Internal(getOption("genthat.tracing"))) {
                .Internal(options(genthat.tracing = FALSE))
                default <- genthat:::`__genthat_default_retv`
                retv <- returnValue(default = default)
                if (!identical(retv, default) && !genthat:::is_exception_returnValue(retv)) {
                  genthat:::record_trace(name = "trafo", pkg = "coin", args = as.list(match.call())[-1], retv = retv, seed = `__genthat_captured_seed`, 
                    env = parent.frame())
                }
                .Internal(options(genthat.tracing = TRUE))
            }
        })
        {
            if (!(is.data.frame(data) || is.list(data))) stop(sQuote("data"), " is not of class ", dQuote("data.frame"), 
                " or ", dQuote("list"))
            if (!is.null(block)) {
                if (!is.factor(block) || length(block) != nrow(data)) stop(sQuote("block"), " is not a factor with ", nrow(data), 
                  " elements")
                ret <- trafo(data, numeric_trafo, factor_trafo, ordered_trafo, surv_trafo)
                for (lev in levels(block)) {
                  ret[block == lev, ] <- trafo(data[block == lev, , drop = FALSE], numeric_trafo, factor_trafo, ordered_trafo, 
                    surv_trafo)
                }
                return(ret)
            }
            if (!is.null(var_trafo)) {
                if (!is.list(var_trafo)) stop(sQuote("var_trafo"), " is not a list")
                if (!all(names(var_trafo) %in% names(data))) stop("variable(s) ", names(var_trafo)[!(names(var_trafo) %in% 
                  names(data))], " not found in ", sQuote("var_trafo"))
            }
            tr <- vector(mode = "list", length = length(data))
            names(tr) <- names(data)
            for (nm in names(data)) {
                x <- data[[nm]]
                if (nm %in% names(var_trafo)) tr[[nm]] <- as.matrix(var_trafo[[nm]](x)) else if (is.ordered(x)) tr[[nm]] <- as.matrix(ordered_trafo(x)) else if (is.factor(x) || 
                  is.logical(x)) tr[[nm]] <- as.matrix(factor_trafo(x)) else if (is.Surv(x)) tr[[nm]] <- as.matrix(surv_trafo(x)) else if (is.numeric(x)) tr[[nm]] <- as.matrix(numeric_trafo(x)) else {
                  if (idx <- inherits(x, "AsIs", TRUE)) oldClass(x) <- oldClass(x)[-idx]
                  stop("data class ", paste(dQuote(class(x)), collapse = ", "), " is not supported")
                }
            }
            ret <- c()
            assignvar <- c()
            cn <- c()
            for (i in 1:length(tr)) {
                if (nrow(tr[[i]]) != nrow(data)) stop("transformation of variable ", names(tr)[i], " are not of length / nrow", 
                  nrow(data))
                ret <- cbind(ret, tr[[i]])
                if (is.null(colnames(tr[[i]]))) {
                  cn <- c(cn, rep.int("", ncol(tr[[i]])))
                } else {
                  cn <- c(cn, paste0(ifelse(length(tr) > 1, ".", ""), colnames(tr[[i]])))
                }
                assignvar <- c(assignvar, rep.int(i, ncol(tr[[i]])))
            }
            attr(ret, "assign") <- assignvar
            if (length(tr) > 1) {
                colnames(ret) <- paste0(rep.int(names(tr), tabulate(assignvar)), cn)
            } else {
                colnames(ret) <- cn
            }
            ret
        }
    }, env = getNamespace("coin")), ytrafo = genthat::with_env(function(data) trafo(data, numeric_trafo = rank_trafo), env = list2env(list(trafo = coin::trafo, 
        rank_trafo = coin::rank_trafo), parent = baseenv())), scores = NULL, check = genthat::with_env(function(object) {
        if (!is_2sample(object)) stop(sQuote("object"), " does not represent a two-sample problem", " (maybe the grouping variable is not a factor?)")
        if (!is_numeric_y(object)) stop(sQuote(colnames(object@y)), " is not a numeric variable")
        TRUE
    }, env = list2env(list(is_numeric_y = coin:::is_numeric_y, is_2sample = coin:::is_2sample), parent = baseenv())))
    coin:::has_distribution(args = args)
}




