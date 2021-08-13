

genthat_extracted_call <- function() {
    x <- structure(list(logl = c(-2605.25539931118, -2614.71768363868, -2639.51774919997), loglsat = c(-2596.22320296243, 
        -2610.93321403509, -2622.59638310232), lratio = c(18.064392697499, 7.56893920718085, 33.8427321953013), lratiomean = 19.8253546999937, 
        lratiosd = 13.2251196545182, lratioorg = 45.2990931604418, zratio = 1.9261631747691, pvalzratio = 0.0270420011881536, 
        pvalratio = 0, chisq = c(18.7030470761169, 7.19848578735989, 34.2086192293117), chisqmean = 20.0367173642628, chisqsd = 13.5543658821106, 
        chisqorg = 44.3560929552471, zchisq = 1.79420976255936, pvalzchisq = 0.0363898472539945, pvalchisq = 0, nsamples = 3, 
        lcaiter = 5), class = "bootstrap.lca")
    e1071:::print.bootstrap.lca(x = x)
}




