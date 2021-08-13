

genthat_extracted_call <- function() {
    ylim <- c(-1, 1)
    ylab <- ""
    xlim <- c(-1, 1)
    xlab <- ""
    uin <- NULL
    tol <- 0.04
    sub <- NULL
    shrink <- 1.5
    main <- "Clock 24"
    control.circle <- list(n = 1000, type = "l", col = 1, bg = "transparent", pch = 1, cex = 1, lty = 1, lwd = 1)
    circular:::CirclePlotRad(xlim = xlim, ylim = ylim, uin = uin, shrink = shrink, tol = tol, main = main, sub = sub, xlab = xlab, 
        ylab = ylab, control.circle = control.circle)
}




