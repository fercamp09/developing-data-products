#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Multiplying two numbers"),

    # Sidebar with two sliders input for calculating the multiplication of two numbers
    sidebarLayout(
        sidebarPanel(
            p("Select two numbers with the slider and the result will be displayed at the right"),
            sliderInput("first",
                        "First number:",
                        min = 0,
                        max = 500,
                        value = 30),
            
            sliderInput("second",
                        "Second number:",
                        min = 0,
                        max = 500,
                        value = 30),
        ),
    
        # Show the multiplication result
        mainPanel(
            h3("Multiplication result"),
            textOutput("distPlot")
        )
    )
))
