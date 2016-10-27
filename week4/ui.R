

# Rely on the 'WorldPhones' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Use a fluid Bootstrap layout
fluidPage(    
  
  # Give the page a title
  titlePanel("Population and unemployment"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      dateInput('dateS',
                label = 'Start Date input: yyyy-mm-dd',
                value = "1967-07-01"
      ),
      
      dateInput('dateE',
                label = 'End$ Date input: yyyy-mm-dd',
                value = "2015-04-01"
      
                
                )
      ),
    
    
    # Create a spot for the barplot
    mainPanel(
      verbatimTextOutput("dateS"),
      verbatimTextOutput("dateE"),
      plotOutput("populationPlot")  
    )
    
  )
)

