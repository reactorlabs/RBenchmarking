

genthat_extracted_call <- function() {
    poison.text <- structure(list(Sick = structure(c(2L, 1L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 2L, 1L, 1L, 2L, 2L, 
        2L, 2L, 1L, 2L, 2L, 2L, 2L, 2L, 1L, 2L, 2L, 1L, 2L, 2L, 1L, 1L, 1L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 
        1L, 1L, 1L, 2L, 1L, 2L, 1L, 2L, 2L), .Label = c("healthy", "sick"), class = "factor"), Sex = structure(c(1L, 1L, 
        1L, 1L, 2L, 2L, 1L, 1L, 2L, 2L, 1L, 1L, 1L, 1L, 2L, 1L, 2L, 2L, 1L, 1L, 2L, 1L, 1L, 2L, 1L, 2L, 1L, 2L, 1L, 1L, 1L, 
        2L, 1L, 2L, 1L, 2L, 2L, 1L, 2L, 2L, 2L, 2L, 1L, 1L, 2L, 2L, 2L, 2L, 1L, 1L, 2L, 2L, 1L, 2L, 2L), .Label = c("F", 
        "M"), class = "factor"), textual = structure(c(24L, 12L, 17L, 9L, 17L, 6L, 17L, 26L, 24L, 21L, 26L, 20L, 4L, 9L, 
        10L, 17L, 18L, 26L, 17L, 9L, 4L, 3L, 16L, 14L, 5L, 11L, 19L, 15L, 11L, 26L, 2L, 10L, 11L, 11L, 23L, 26L, 22L, 13L, 
        1L, 26L, 24L, 11L, 4L, 25L, 16L, 4L, 8L, 11L, 11L, 4L, 9L, 4L, 7L, 19L, 17L), .Label = c(" Abdominals Fever Diarrhea Fish Mayo Courgette Cheese Icecream", 
        " Abdominals Fever Diarrhea Potato Fish Courgette Cheese Icecream", " Abdominals Fever Diarrhea Potato Fish Mayo Courgette Cheese ", 
        " Abdominals Fever Diarrhea Potato Fish Mayo Courgette Cheese Icecream", " Abdominals Fever Diarrhea Potato Fish Mayo Courgette Icecream", 
        " Abdominals Fever Diarrhea Potato Mayo Courgette Cheese Icecream", " Potato Fish Courgette ", " Potato Fish Courgette Cheese ", 
        " Potato Fish Courgette Cheese Icecream", " Potato Fish Courgette Icecream", " Potato Fish Mayo Courgette Cheese Icecream", 
        " Potato Fish Mayo Courgette Icecream", " Potato Fish Mayo Icecream", " Vomitting Abdominals Diarrhea Potato Fish Mayo Courgette Cheese Icecream", 
        " Vomitting Abdominals Fever Diarrhea Potato Fish Cheese Icecream", " Vomitting Abdominals Fever Diarrhea Potato Fish Mayo Cheese Icecream", 
        " Vomitting Abdominals Fever Diarrhea Potato Fish Mayo Courgette Cheese Icecream", " Vomitting Abdominals Fever Diarrhea Potato Fish Mayo Courgette Icecream", 
        " Vomitting Abdominals Fever Potato Fish Mayo Courgette Cheese Icecream", " Vomitting Abdominals Potato Fish Mayo Courgette Cheese Icecream", 
        " Vomitting Fever Diarrhea Potato Fish Mayo Courgette Cheese Icecream", "Nausea Abdominals Diarrhea Fish Mayo Courgette Cheese Icecream", 
        "Nausea Abdominals Fever Diarrhea Fish Mayo Courgette Cheese Icecream", "Nausea Abdominals Fever Diarrhea Potato Fish Mayo Courgette Cheese Icecream", 
        "Nausea Vomitting Abdominals Fever Diarrhea Potato Fish Mayo Cheese ", "Nausea Vomitting Abdominals Fever Diarrhea Potato Fish Mayo Courgette Cheese Icecream"), 
        class = "factor")), class = "data.frame", row.names = c("Samantha", "Sarah", "Barbara", "Acha", "Zacharias", "Dalen", 
        "Naomi", "Rachel", "David", "Andre", "Bess", "Victoria", "Rebecca", "Tess", "John", "Theresa", "Alvis", "Bill", "Betsie", 
        "Tracee", "Bazil", "Adela", "Vanessa", "Earl", "Nancy", "Marten", "Laura", "Ellston", "Anna", "Grace", "Gabriella", 
        "Garett", "Lia", "Wade", "Christina", "Tony", "Mathew", "Alexandra", "Wallace", "Steeve", "Travis", "Tyler", "Deborah", 
        "Cameron", "Graham", "James", "Meldrick", "Talbot", "Asheley", "Davina", "Jeremie", "Lincoln", "Alison", "Tom", "Taylor"))
    FactoMineR:::textual(tab = poison.text, num.text = 3, contingence.by = c(1, 2))
}




