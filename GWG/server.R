library(shiny)
library(ggplot2)

# Define a server for the Shiny app
function(input, output) {
  
  output$myImage <- renderImage({
    # A temp file to save the output.
    # # This file will be removed later by renderImage
    # outfile <- tempfile(fileext='.png')
    # 
    # # Generate the PNG
    # png(outfile, width=400, height=300)
    # hist(rnorm(input$obs), main="Generated in renderImage()")
    # dev.off()
    outfile <- paste(input$action,".png", sep="")
    # Return a list containing the filename
    list(src = outfile,
         alt = outfile
   )
  }, deleteFile = FALSE)
  
}