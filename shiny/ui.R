library(shiny)

shinyUI(fluidPage(
  
  # # Application title
  # titlePanel("Grizzlies Minutes Model"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      
      selectInput("artist_select", label = "Select a Band", 
                  choices = list("Wilco"="Wilco", "The Wood Brothers"="The Wood Brothers","Tony Allen"="Tony Allen",
                                 "Chandler Parsons"="Chandler Parsons"),
                  selected="Wilco")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      
      h3(textOutput("text1"), align = "center"),
      plotOutput("Plays"),
      tableOutput(outputId = "data")
    )
  )
))