library(shiny)
library(ggplot2)

CP <- read.csv(file='teamrebound.csv', header=FALSE)
df <- data.frame(CP)
colnames(df)<-c("Artist","Album","Track","Date")
df$Date <- as.Date(df$Date, "%m/%d/%Y")

shinyServer(function(input, output) {
  
  output$Plays <- renderPlot({
    df = subset(df, Artist==input$artist_select)
    month = data.frame(table(format(df$Date ,"%b-%Y")))
    colnames(month)
    # month = df[, .N, by=.(year(Date), month(Date))]
    # ggplot(month, aes(x=Date, y=Count)) + geom_line()
  })
  
  output$data <- renderTable({ 
    df = subset(df, Artist==input$artist_select)
    # month = data.frame(table(format(df$Date ,"%b-%Y")))
    df
    })
})