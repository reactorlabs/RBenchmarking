library(circlize)

function_to_run <- function() {
    w2 <- 1
    w <- 1
    theta22 <- structure(6.19736842105269, names = "theta")
    theta21 <- structure(20.8026315789474, names = "theta")
    theta12 <- structure(285.092105263158, names = "theta")
    theta11 <- structure(299.697368421053, names = "theta")
    rou2 <- 0.885576234788833
    rou1 <- 0.885576234788833
    h2 <- NULL
    h.ratio <- 0.5
    h <- NULL
    circlize:::getQuadraticPoints(theta1 = (theta11 + theta12)/2, theta2 = (theta21 + theta22)/2, rou1 = rou1, rou2 = rou2, 
        h = (h + h2)/2, h.ratio = h.ratio, w = (w + w2)/2)
}




