
shinyUI(fluidPage(
    titlePanel("My Shiny App"),
    sidebarLayout(
        sidebarPanel(h3("Installation"),
                     "Shiny is available on CRAN, so you can install it in the usual way from your R console:",
                     p(code("install.packages(\"shiny\")")),
                     img(src = "bigorb.png", height = 40, width = 40),
                     "shiny is a product of", span("RStudio", style = "color:blue")
                     
            ),
        mainPanel(
            h2("Introducing Shiny"),
            p("Shiny is a new package from RStudio that makes it", em("incredibly"),
            "easy to build interactive web applications with R."),
            p("For an introduction and live examples, visit the ", 
              span("Shiny homepage.", style = "color:blue")),
            
            p(h2("Features")),
            p("* Build useful web applications with only a few lines of code - no JavaScript required."),
            p("* Shiny applications are automatically \"live\" in the same way that ",
              strong("spreadsheets"), "are live. Outputs change instantly as users modify
              inputs, without requireing a reload of the browser.")
            
            
        )
    )
))
