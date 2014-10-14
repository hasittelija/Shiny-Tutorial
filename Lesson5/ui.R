setwd("C:/Users/Popsu/Documents/R_codes/Shiny_tutorial/Lesson5")
# ui.R

shinyUI(fluidPage(
    titlePanel("censusVis"),
    # sidebar
    sidebarLayout(
        sidebarPanel(
            helpText("Create demographic maps with information from the 2010 US Census."),
            
            selectInput("var", label = "Choose a variable to display", 
                        choices = list("Percent White" = "white", "Percent Black" = "black",
                                       "Percent Hispanic" = "hispanic", "Percent Asian" = "asian")
                        , selected = "white"),
            sliderInput("range", label = "Range of interest:",
                        min = 0, max = 100, value = c(0, 100))
            
            
        ),
        # main panel
      mainPanel(plotOutput("map")
        )
    )
))