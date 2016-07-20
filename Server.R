library(shiny)

CancerRisk <- function(Tumor_size) (Tumor_size)/7
  
  
  

shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$TumorSize})
    #output$inputValue2 <- renderPrint({input$TumorUniformity})
    output$prediction <- renderPrint({CancerRisk(input$TumorSize)})
  }
)