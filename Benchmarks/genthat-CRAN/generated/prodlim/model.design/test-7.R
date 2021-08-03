library(prodlim)

function_to_run <- function() {
    unspecialsDesign <- FALSE
    Terms <- Hist(time, status) ~ 1
    specialsFactor <- TRUE
    specialsDesign <- FALSE
    mm <- structure(list(time = c(3.70924879956179, 1.31651584077598, 5.24439389749123, 2.92368255877329, 4.03588940777611,
        4.84282471780607, 3.43453301584948, 4.34224291836878, 3.46610959585461, 6.81783535924938, 3.31144069392069, 9.20514731042426,
        12.372122422428, 1.83569230515297, 2.97126294482614, 2.45369105572227, 7.33085619852854, 9.89708812493055, 8.15315350720967,
        2.17039877349477), status = c(1, 0, 0, 1, 0, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1)), row.names = c(NA, 20L),
        class = "data.frame")
    dropIntercept <- TRUE
    prodlim:::model.design(terms = Terms, data = mm, dropIntercept = dropIntercept, maxOrder = 1, unspecialsDesign = unspecialsDesign,
        specialsFactor = specialsFactor, specialsDesign = specialsDesign)
}




