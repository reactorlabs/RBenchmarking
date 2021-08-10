library(cluster)

function_to_run <- function() {
    m <- "single"
    hclust <- stats::hclust
    d.a <- structure(c(7.5, 2.7, 30.4, 13.6, 4.3, 17.2, 6, 5, 2, 23.7, 3.2, 4.8, 31.9, 15.1, 3.8, 18.7, 7.5, 2.5, 6.3, 25.2, 
        10.7, 31.5, 14.7, 3.4, 18.3, 7.1, 2.3, 3.1, 24.8, 5.9, 16.8, 28.1, 13.2, 24.4, 33.8, 28.4, 6.7, 28, 11.3, 3.6, 7.6, 
        17, 11.6, 10.1, 11.2, 14.9, 3.7, 5.7, 3.1, 21.4, 7.5, 11.2, 20.6, 15.2, 6.5, 14.8, 9.4, 4.4, 17.7, 8.8, 5.4, 27.1, 
        8.2, 21.7, 4.4, 21.3), Size = 12L, Labels = c("B", "DK", "D", "GR", "E", "F", "IRL", "I", "L", "NL", "P", "UK"), 
        Diag = FALSE, Upper = FALSE, method = "manhattan", call = dist(x = agriculture, method = "manhattan"), class = "dist")
    cluster:::coef.hclust(object = hclust(d.a, method = m))
}




