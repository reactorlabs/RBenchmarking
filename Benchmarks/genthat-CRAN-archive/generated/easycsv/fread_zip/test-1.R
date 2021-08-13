library(easycsv)

function_to_run <- function() {
    filezip <- "/opt/r_library/easycsv/exampleZips/example_tables.zip"
    easycsv:::fread_zip(filezip = filezip)
}




