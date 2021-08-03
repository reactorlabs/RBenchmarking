library(prodlim)

function_to_run <- function() {
    ybox.position <- structure(c(0, 84.4171428571429, 0), names = c("box1", "box2", "box3"))
    xbox.position <- structure(c(0, 45.7108571428571, 91.4217142857143), names = c("box1", "box2", "box3"))
    to.state <- structure(3L, .Label = c("1", "2", "3"), class = "factor")
    from.state <- structure(1L, .Label = c("1", "2", "3"), class = "factor")
    box.width <- c(8.57828571428572, 8.57828571428572, 8.57828571428572)
    box.height <- c(15.5828571428571, 15.5828571428571, 15.5828571428571)
    prodlim:::findArrow(Box1 = c(round(xbox.position[from.state], 4), round(ybox.position[from.state], 4)), Box2 = c(round(xbox.position[to.state],
        4), round(ybox.position[to.state], 4)), Box1Dim = c(box.width[from.state], box.height[from.state]), Box2Dim = c(box.width[to.state],
        box.height[to.state]), verbose = FALSE)
}




