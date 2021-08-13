

genthat_extracted_call <- function() {
    imp <- NULL
    cobalt:::length_imp_process(vectors = c("treat", "subclass", "match.strata", "cluster", "s.weights", "subset", "discarded"), 
        data.frames = c("covs", "weights", "distance", "addl"), imp = imp, original.call.to = "matchit()")
}




