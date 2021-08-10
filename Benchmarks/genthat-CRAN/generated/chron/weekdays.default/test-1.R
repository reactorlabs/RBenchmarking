library(chron)

function_to_run <- function() {
    dts <- structure(c(3171, 3075, 3121, 3134, 3123, 3098, 3178, 3099, 3203, 3100, 3168, 3217, 3034, 3090, 3097, 3134, 3089, 
        2971, 2981, 3169, 3088, 3014, 3095, 3163, 3197, 3082, 3091, 3015, 3126, 3072), class = c("dates", "times", "numeric"), 
        origin = structure(c(1, 1, 1970), names = c("month", "day", "year")))
    chron:::weekdays.default(x = dts)
}




