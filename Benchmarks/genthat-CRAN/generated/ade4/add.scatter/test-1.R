

genthat_extracted_call <- function() {
    fgraph <- genthat::with_env(function() {
        scatterutil.eigen(w, nf = nf, wsel = c(xax, yax), sub = sub, csub = csub, box = TRUE)
    }, env = list2env(list(yax = 2, xax = 1, w = c(0.542889284864477, 0.445002761161224, 0.127048433329534), sub = "Eigenvalues", 
        scatterutil.eigen = ade4::scatterutil.eigen, nf = 2, csub = 0.5), parent = baseenv()))
    ratio <- 0.25
    posi <- "none"
    inset <- 0.01
    ade4:::add.scatter(func = fgraph(), posi = posi, ratio = ratio, inset = inset)
}




