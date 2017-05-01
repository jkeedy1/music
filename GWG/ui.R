library(shiny)

# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Switches"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("action", "Category:", 
                  choices=c("Total","Eat","Love","Learn","Move","Sleep","Explore")),
      hr(),
      helpText("Pick the category to display.")
    ),
    
    # Create a spot for the barplot
    mainPanel(
      imageOutput("myImage")
    )
    
  )
)