

library(shiny)

shinyUI(fluidPage(
  titlePanel("Plot expression of gene"),
  
  #crating gene choices panel
  sidebarLayout(
    sidebarPanel(
      selectInput("gene", "Select gene:", choices = NULL)
    ),
    
    mainPanel(
      plotOutput("tpmPlot")
    )
  )
))
