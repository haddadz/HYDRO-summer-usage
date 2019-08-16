#UI.R
#loading shiny library
library(shiny) 

shinyUI(fluidPage( #fluid page for dynamically adapting to screens of different resolutions. 
  titlePanel("Hydro usage for Summer 2019"),  
  sidebarLayout(   
    sidebarPanel(
  #implementing radio buttons       
    radioButtons("p", "Select column of Hydro dataset:",        
                 list("Hydro.Summer"='d')),
    #slider input for bins of histogram  
    sliderInput("bins",                   "Number of bins:",                   min = 1,                   max = 50,                   value = 30)
    # Show a plot of the generated distribution 
    ), 
    mainPanel(       plotOutput("distPlot")      )   ) ))