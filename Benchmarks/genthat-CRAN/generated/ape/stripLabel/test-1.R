library(ape)

function_to_run <- function() {
    x <- c("Panthera_leo", "Panthera_pardus", "Panthera_onca", "Panthera_uncia", "Panthera_tigris_altaica", "Panthera_tigris_amoyensis")
    ape:::stripLabel(x = x, species = TRUE)
}




