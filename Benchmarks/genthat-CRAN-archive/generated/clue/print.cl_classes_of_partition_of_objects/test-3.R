

genthat_extracted_call <- function() {
    x <- structure(list(`1` = 1:4, `2` = 7:10, `3` = 11:15, `4` = 5:6), class = c("cl_classes_of_partition_of_objects", "cl_classes_of_objects"), 
        n_of_objects = 15L, labels = c("grandfather", "grandmother", "granddaughter", "grandson", "brother", "sister", "father", 
            "mother", "daughter", "son", "nephew", "niece", "cousin", "aunt", "uncle"))
    clue:::print.cl_classes_of_partition_of_objects(x = x)
}




