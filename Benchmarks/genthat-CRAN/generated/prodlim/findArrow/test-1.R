library(prodlim)

function_to_run <- function() {
    ybox.position <- structure(c(45.2942857142857, 45.2942857142857), names = c("box1", "box2"))
    xbox.position <- structure(c(0, 76.9702857142857), names = c("box1", "box2"))
    to.state <- structure(2L, .Label = c("1", "2"), class = "factor")
    from.state <- structure(1L, .Label = c("1", "2"), class = "factor")
    box.width <- c(23.0297142857143, 23.0297142857143)
    box.height <- c(9.41142857142857, 9.41142857142857)
    prodlim:::findArrow(Box1 = c(round(xbox.position[from.state], 4), round(ybox.position[from.state], 4)), Box2 = c(round(xbox.position[to.state],
        4), round(ybox.position[to.state], 4)), Box1Dim = c(box.width[from.state], box.height[from.state]), Box2Dim = c(box.width[to.state],
        box.height[to.state]), verbose = FALSE)
}




