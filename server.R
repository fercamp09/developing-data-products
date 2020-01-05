#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to make the calculation.
shinyServer(function(input, output) {
    output$distPlot <- renderText({
        c(input$first, "x", input$second, "=", input$first * input$second)
    })
})
