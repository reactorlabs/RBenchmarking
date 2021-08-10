library(DT)

function_to_run <- function() {
    . <- structure(list(x = structure(list(filter = "none", data = structure(list(` ` = c("1", "2", "3", "4", "5", "6", "7", 
        "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"), temperature = c(0, 20, 40, 60, 80, 100, 120, 
        140, 160, 180, 200, 220, 240, 260, 280, 300, 320, 340, 360), pressure = c(2e-04, 0.0012, 0.006, 0.03, 0.09, 0.27, 
        0.75, 1.85, 4.2, 8.8, 17.3, 32.1, 57, 96, 157, 247, 376, 558, 806)), class = "data.frame", row.names = c(NA, -19L)), 
        container = "<table class=\"display\">\n  <thead>\n    <tr>\n      <th> </th>\n      <th>temperature</th>\n      <th>pressure</th>\n    </tr>\n  </thead>\n</table>", 
        options = structure(list(columnDefs = list(list(className = "dt-right", targets = c(1, 2)), list(orderable = FALSE, 
            targets = 0)), order = list(), autoWidth = FALSE, orderClasses = FALSE), escapeIdx = "true")), colnames = c(" ", 
        "temperature", "pressure"), rownames = TRUE), width = NULL, height = NULL, sizingPolicy = list(defaultWidth = NULL, 
        defaultHeight = NULL, padding = NULL, viewer = list(defaultWidth = NULL, defaultHeight = NULL, padding = NULL, fill = TRUE, 
            suppress = FALSE, paneHeight = NULL), browser = list(defaultWidth = NULL, defaultHeight = NULL, padding = NULL, 
            fill = FALSE, external = FALSE), knitr = list(defaultWidth = "100%", defaultHeight = "auto", figure = FALSE)), 
        dependencies = list(structure(list(name = "dt-core", version = "1.10.20", src = list(file = "/opt/r_library/DT/htmlwidgets/lib/datatables"), 
            meta = NULL, script = "js/jquery.dataTables.min.js", stylesheet = c("css/jquery.dataTables.min.css", "css/jquery.dataTables.extra.css"), 
            head = NULL, attachment = NULL, package = NULL, all_files = FALSE), class = "html_dependency"), structure(list(name = "jquery", 
            version = "1.11.3", src = list(file = "/opt/r_library/crosstalk/lib/jquery"), meta = NULL, script = "jquery.min.js", 
            stylesheet = NULL, head = NULL, attachment = NULL, package = NULL, all_files = TRUE), class = "html_dependency"), 
            structure(list(name = "crosstalk", version = "1.0.0", src = list(file = "/opt/r_library/crosstalk/www"), meta = NULL, 
                script = "js/crosstalk.min.js", stylesheet = "css/crosstalk.css", head = NULL, attachment = NULL, package = NULL, 
                all_files = TRUE), class = "html_dependency")), elementId = NULL, preRenderHook = genthat::with_env(function(instance) {
            data <- instance[["x"]][["data"]]
            if (object.size(data) > 1500000 && getOption("DT.warn.size", TRUE)) warning("It seems your data is too big for client-side DataTables. You may ", 
                "consider server-side processing: https://rstudio.github.io/DT/server.html")
            data <- escapeData(data, escape, colnames)
            data <- unname(data)
            instance$x$data <- data
            instance
        }, env = list2env(list(object.size = utils::object.size, escapeData = DT:::escapeData, escape = TRUE, colnames = c(" ", 
            "temperature", "pressure")), parent = baseenv())), jsHooks = list()), class = c("datatables", "htmlwidget"), 
        package = "DT")
    DT:::formatSignif(table = ., columns = "pressure", digits = 2)
}




