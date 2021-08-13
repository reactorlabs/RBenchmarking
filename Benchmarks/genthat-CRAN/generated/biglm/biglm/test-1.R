

genthat_extracted_call <- function() {
    ff <- log(Volume) ~ log(Girth) + log(Height)
    chunk1 <- structure(list(Girth = c(8.3, 8.6, 8.8, 10.5, 10.7, 10.8, 11, 11, 11.1, 11.2), Height = c(70, 65, 63, 72, 81, 
        83, 66, 75, 80, 75), Volume = c(10.3, 10.3, 10.2, 16.4, 18.8, 19.7, 15.6, 18.2, 22.6, 19.9)), row.names = c(NA, 10L), 
        class = "data.frame")
    biglm:::biglm(formula = ff, data = chunk1)
}




