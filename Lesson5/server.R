#setwd("C:/Users/Popsu/Documents/R_codes/Shiny_tutorial/Lesson5")
counties <- readRDS("data/counties.rds")
source("helpers.R")
require(maps)
require(mapproj)
#server.R
library(shiny)

shinyServer(function(input, output) {
 
    
#     output$keijo <- renderText({
#         input$var
#     })
#     
    
    output$map <- renderPlot({
        
        percent_map(counties[,input$var], "darkgreen", input$var, input$range[1], input$range[2])
        
    })    
})