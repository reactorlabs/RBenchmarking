

genthat_extracted_call <- function() {
    white.adjust <- FALSE
    from_Anova <- structure(list(`Sum Sq` = c(179.041120399352, 174.858201788386), Df = c(1, 18), `F value` = c(18.4305919552376, 
        NA), `Pr(>F)` = c(0.000437756150454231, NA)), class = c("anova", "data.frame"), row.names = c("group", "Residuals"), 
        heading = c("Anova Table (Type II tests)\n", "Response: rt"))
    between_numeric <- FALSE
    ez:::ezANOVA_between_summary(from_Anova = from_Anova, white.adjust = white.adjust, between_numeric = between_numeric)
}




