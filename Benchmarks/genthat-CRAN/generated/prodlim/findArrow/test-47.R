library(prodlim)

function_to_run <- function() {
    ybox.position <- structure(c(45.2942857142857, 90.5885714285714, 0), names = c("box1", "box2", "box3"))
    xbox.position <- structure(c(0, 77.9834285714286, 77.9834285714286), names = c("box1", "box2", "box3"))
    to.state <- structure(3L, .Label = c("1", "2", "3"), class = "factor")
    from.state <- structure(2L, .Label = c("1", "2", "3"), class = "factor")
    box.width <- c(22.0165714285714, 22.0165714285714, 22.0165714285714)
    box.height <- c(9.41142857142857, 9.41142857142857, 9.41142857142857)
    prodlim:::findArrow(Box1 = c(round(xbox.position[from.state], 4), round(ybox.position[from.state], 4)), Box2 = c(round(xbox.position[to.state],
        4), round(ybox.position[to.state], 4)), Box1Dim = c(box.width[from.state], box.height[from.state]), Box2Dim = c(box.width[to.state],
        box.height[to.state]), verbose = FALSE)
}




