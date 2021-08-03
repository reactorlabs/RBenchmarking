library(prodlim)

function_to_run <- function() {
    ybox.position <- structure(c(42.2085714285714, 42.2085714285714), names = c("box1", "box2"))
    xbox.position <- structure(c(0, 66.3451428571429), names = c("box1", "box2"))
    to.state <- structure(2L, .Label = c("1", "2"), class = "factor")
    from.state <- structure(1L, .Label = c("1", "2"), class = "factor")
    box.width <- c(33.6548571428571, 33.6548571428571)
    box.height <- c(15.5828571428571, 15.5828571428571)
    prodlim:::findArrow(Box1 = c(round(xbox.position[from.state], 4), round(ybox.position[from.state], 4)), Box2 = c(round(xbox.position[to.state],
        4), round(ybox.position[to.state], 4)), Box1Dim = c(box.width[from.state], box.height[from.state]), Box2Dim = c(box.width[to.state],
        box.height[to.state]), verbose = FALSE)
}




