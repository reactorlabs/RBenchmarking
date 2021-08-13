

genthat_extracted_call <- function() {
    dots <- alist(xlab = list(d = "x", p = "q", q = "p"), ylab = list(d = "d(x)", p = "p(q)", q = "q(p)"), panel.first = list(expression({
    }), expression({
    }), expression({
    })), panel.last = list(expression({
    }), expression({
    }), expression({
    })))
    distr:::.panel.mingle(dots = dots, element = "panel.last")
}




