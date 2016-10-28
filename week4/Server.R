
#The caret package is used only to bring in the economics data set.
# Here we will get economics data and plot population and date
library(caret)
library(shiny)
data("economics")

# Define a server for the Shiny app
function(input, output, session) {
  
#  output$dateRangeText  <- renderText({
#     paste("input$dateRange is", 
#           paste(as.character(input$dateRange), collapse = " to ")
#     })
    output$dateS  <- renderText({
      paste("input$dateS is", as.character(input$dateS))
    })
    output$dateE  <- renderText({
      paste("input$dateE is", as.character(input$dateE))
    })
      # Fill in the spot we created for a plot
  output$populationPlot <- renderPlot({
    economicsf = subset(economics, date > input$dateS & date < input$dateE)
       print(ggplot(economicsf, aes(x=date))+geom_line(aes(y=pop), color="red")+geom_line(aes(y=economicsf$unemploy), color="blue"))
     })
}
