

library(shiny)
library(ggplot2)

#loading data
TPM_data <- read.csv("TPMs_table_100genes.csv", row.names = 1)

shinyServer(function(input, output, session) {
  
  #creating gene choices
  observe({
    updateSelectInput(session, "gene", choices = rownames(TPM_data))
  })
  
  #creating plot
  output$tpmPlot <- renderPlot({
    
    ggplot(data.frame(x = colnames(TPM_data), y = as.numeric(TPM_data[input$gene, ])),
           aes(x = x, y = y)) +
      geom_bar(stat = "identity") +
      labs(title = paste("TPM plot for", input$gene),
           x = "Sample", y = "TPM")
  })
})
