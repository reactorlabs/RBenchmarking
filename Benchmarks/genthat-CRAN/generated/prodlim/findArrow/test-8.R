library(prodlim)

function_to_run <- function() {
    ybox.position <- structure(c(47.6471428571429, 43.6382857142857), names = c("box1", "box2"))
    xbox.position <- structure(c(0, 69.2045714285714), names = c("box1", "box2"))
    to.state <- structure(2L, .Label = c("1", "2"), class = "factor")
    from.state <- structure(1L, .Label = c("1", "2"), class = "factor")
    box.width <- c(10.188, 30.7954285714286)
    box.height <- c(4.70571428571429, 12.7234285714286)
    prodlim:::findArrow(Box1 = c(round(xbox.position[from.state], 4), round(ybox.position[from.state], 4)), Box2 = c(round(xbox.position[to.state],
        4), round(ybox.position[to.state], 4)), Box1Dim = c(box.width[from.state], box.height[from.state]), Box2Dim = c(box.width[to.state],
        box.height[to.state]), verbose = FALSE)
}




