library(DiagrammeR)

function_to_run <- function() {
    width <- NULL
    height <- NULL
    dot_code <- "digraph {\n\ngraph [layout = 'neato',\n       outputorder = 'edgesfirst',\n       bgcolor = 'white']\n\nnode [fontname = 'Helvetica',\n      fontsize = '10',\n      shape = 'circle',\n      fixedsize = 'true',\n      width = '0.5',\n      style = 'filled',\n      fillcolor = 'aliceblue',\n      color = 'gray70',\n      fontcolor = 'gray50']\n\nedge [fontname = 'Helvetica',\n     fontsize = '8',\n     len = '1.5',\n     color = 'gray80',\n     arrowsize = '0.5']\n\n  '1' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '3.5,4!'] \n  '2' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '1.5,3!'] \n  '3' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '5.5,3!'] \n  '4' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '0.5,2!'] \n  '5' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '2.5,2!'] \n  '6' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '4.5,2!'] \n  '7' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '6.5,2!'] \n  '8' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '0,1!'] \n  '9' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '1,1!'] \n  '10' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '2,1!'] \n  '11' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '3,1!'] \n  '12' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '4,1!'] \n  '13' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '5,1!'] \n  '14' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '6,1!'] \n  '15' [label = '', fillcolor = '#F0F8FF', fontcolor = '#000000', pos = '7,1!'] \n  '1'->'2' \n  '1'->'3' \n  '2'->'4' \n  '2'->'5' \n  '3'->'6' \n  '3'->'7' \n  '4'->'8' \n  '4'->'9' \n  '5'->'10' \n  '5'->'11' \n  '6'->'12' \n  '6'->'13' \n  '7'->'14' \n  '7'->'15' \n}"
    DiagrammeR:::grViz(diagram = dot_code, width = width, height = height)
}




