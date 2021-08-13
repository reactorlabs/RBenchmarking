

genthat_extracted_call <- function() {
    MAXSTEP <- 100
    linemat <- structure(c(0, -0.112670645694039, 0.922470212788809, 0, -0.112670645694039, 0.922470212788809, 0, -0.112670645694039, 
        0.922470212788809, 0, -0.112670645694039, 0.922470212788809, 3.46302448729633e-05, -0.112532831523439, 0.922474472070448), 
        .Dim = c(3L, 5L))
    ips <- 0
    dblwrd <- c(1, 0)
    fda:::stepit(linemat = linemat, ips = ips, dblwrd = dblwrd, MAXSTEP = MAXSTEP)
}




