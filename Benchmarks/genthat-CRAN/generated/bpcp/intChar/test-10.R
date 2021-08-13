

genthat_extracted_call <- function() {
    x <- structure(list(cens = numeric(0), surv = c(1, 0.75, 0.5, 0.25, 0), lower = c(0.397635364383525, 0.194120449683244, 
        0.0675859864885431, 0.00630946320970989, 0), upper = c(1, 0.99369053679029, 0.932414013511457, 0.805879550316756, 
        0.602364635616474), L = c(0, 3, 7, 8, 14), Lin = c(TRUE, TRUE, TRUE, TRUE, TRUE), R = c(3, 7, 8, 14, Inf), Rin = c(FALSE, 
        FALSE, FALSE, FALSE, FALSE), Interval = c("[0,3)", "[3,7)", "[7,8)", "[8,14)", "[14,Inf)"), stype = "km", betaParms = list(alower = c(4, 
        3.00000000000001, 2, 1, 0), blower = c(1, 2.00000000000001, 3, 4, 1), aupper = c(1, 4, 3.00000000000001, 2, 1), bupper = c(0, 
        1, 2.00000000000001, 3, 4)), conf.level = 0.95), class = "kmciLR")
    bpcp:::intChar(L = x$L, R = x$R, Lin = x$Lin, Rin = x$Rin)
}




