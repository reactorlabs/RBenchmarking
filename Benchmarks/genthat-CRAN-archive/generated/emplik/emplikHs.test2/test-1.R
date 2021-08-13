

genthat_extracted_call <- function() {
    funlogrank <- genthat::with_env(function(t) {
        sqrt(119/(76 * 43)) * fR1(t) * fR2(t)/(fR1(t) + fR2(t))
    }, env = list2env(list(fR2 = genthat::with_env(function(v) .approxfun(x, y, v, method, yleft, yright, f), env = list2env(list(yright = 0, 
        yleft = 76, y = c(76, 60, 56, 49, 43, 40, 35, 33, 30, 27, 25, 22, 20, 16, 14, 13, 11, 10, 7, 6, 5, 4, 3, 1), x = c(0.5, 
            1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5, 9.5, 10.5, 11.5, 12.5, 14.5, 15.5, 16.5, 18.5, 19.5, 20.5, 22.5, 24.5, 
            25.5, 26.5, 28.5), method = 2L, f = 1, .approxfun = stats:::.approxfun), parent = baseenv())), fR1 = genthat::with_env(function(v) .approxfun(x, 
        y, v, method, yleft, yright, f), env = list2env(list(yright = 0, yleft = 43, y = c(43, 42, 40, 36, 33, 31, 29, 25, 
        22, 20, 18, 16, 14, 13, 11, 10, 9, 8, 6, 4, 3, 2, 1), x = c(1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5, 9.5, 10.5, 11.5, 
        12.5, 13.5, 14.5, 15.5, 16.5, 18.5, 21.5, 22.5, 23.5, 25.5, 26.5, 27.5), method = 2L, f = 1, .approxfun = stats:::.approxfun), 
        parent = baseenv()))), parent = baseenv()))
    kidney <- structure(list(time = c(1.5, 3.5, 4.5, 4.5, 5.5, 8.5, 8.5, 9.5, 10.5, 11.5, 15.5, 16.5, 18.5, 23.5, 26.5, 2.5, 
        2.5, 3.5, 3.5, 3.5, 4.5, 5.5, 6.5, 6.5, 7.5, 7.5, 7.5, 7.5, 8.5, 9.5, 10.5, 11.5, 12.5, 12.5, 13.5, 14.5, 14.5, 21.5, 
        21.5, 22.5, 22.5, 25.5, 27.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 2.5, 2.5, 3.5, 6.5, 15.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 
        0.5, 0.5, 0.5, 0.5, 1.5, 1.5, 1.5, 1.5, 2.5, 2.5, 2.5, 2.5, 2.5, 3.5, 3.5, 3.5, 3.5, 3.5, 4.5, 4.5, 4.5, 5.5, 5.5, 
        5.5, 5.5, 5.5, 6.5, 7.5, 7.5, 7.5, 8.5, 8.5, 8.5, 9.5, 9.5, 10.5, 10.5, 10.5, 11.5, 11.5, 12.5, 12.5, 12.5, 12.5, 
        14.5, 14.5, 16.5, 16.5, 18.5, 19.5, 19.5, 19.5, 20.5, 22.5, 24.5, 25.5, 26.5, 26.5, 28.5), delta = c(1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 
        0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 
        0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 
        0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L), 
        type = c(1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 
            1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
            2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
            2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 
            2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L)), class = "data.frame", row.names = c(NA, -119L))
    emplik:::emplikHs.test2(x1 = kidney[kidney[, 3] == 1, 1], d1 = kidney[kidney[, 3] == 1, 2], x2 = kidney[kidney[, 3] == 
        2, 1], d2 = kidney[kidney[, 3] == 2, 2], theta = 0, fun1 = funlogrank, fun2 = funlogrank)
}




