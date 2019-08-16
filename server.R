#SERVER.R 
library(shiny)
#writing server function
shinyServer(function(input, output) { 
  #referring output distPlot in ui.r as output$distPlot  
  output$distPlot <- renderPlot({
    #referring input p in ui.r as input$p     
    if(input$p=='a'){       i<-1     }    
    if(input$p=='b'){       i<-2     }  
    if(input$p=='c'){       i<-3     }  
    if(input$p=='d'){       i<-4     }     
    # x    <- iris[, i] #referring input bins in ui.r as input$bins  
    i <- 3
    x  <- read.csv("10707623_20190815_212959.csv", skip=4)
    x <- x[,i]

    bins <- seq(min(x), max(x), length.out = input$bins + 1) #producing histogram as output  
    hist(x, breaks = bins, col = 'darkgray', border = 'white', main = "Histogram of Hydro data", xlab = "")   }) })