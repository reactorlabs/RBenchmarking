

genthat_extracted_call <- function() {
    swiss <- datasets::swiss
    ellipse:::.pairs_formula(formula = ~Fertility + Education + Catholic, data = swiss, row1attop = FALSE, main = "Swiss data, Education < 20", 
        subset = Education < 20)
}




