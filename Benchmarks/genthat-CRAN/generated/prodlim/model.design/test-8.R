library(prodlim)

function_to_run <- function() {
    unspecialsDesign <- FALSE
    Terms <- Hist(time, status) ~ 1
    specialsFactor <- TRUE
    specialsDesign <- FALSE
    mm <- structure(list(time = c(0.597364679005719, 0.836736115633699, 1.21539126795391, 1.82132226826408, 2.20688663795295,
        2.28403441657353, 2.34600241418988, 2.4465502378103, 2.58908125548376, 3.37065111669117, 4.11975186868313, 4.48477476990214,
        5.32834369210633, 5.7248465289322, 6.19802755334038), status = c(1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1)), row.names = c("2",
        "10", "11", "8", "13", "15", "6", "9", "5", "7", "4", "14", "3", "1", "12"), class = "data.frame")
    dropIntercept <- TRUE
    prodlim:::model.design(terms = Terms, data = mm, dropIntercept = dropIntercept, maxOrder = 1, unspecialsDesign = unspecialsDesign,
        specialsFactor = specialsFactor, specialsDesign = specialsDesign)
}




