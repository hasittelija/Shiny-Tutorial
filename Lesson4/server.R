setwd("C:/Users/Popsu/Documents/R codes/Shiny_tutorial/Lesson4")
#server.R
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$text1 <- renderText({
        paste("You have selected", input$var)
    })
    output$text2 <- renderText({
        minimum <- input$range[1]
        maximum <- input$range[2]
        paste("You have chosen a range that goes from", minimum, "to", maximum)
    })
    
})