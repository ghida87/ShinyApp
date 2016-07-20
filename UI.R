library(shiny)

# Define UI for dataset viewer application
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Breast Cancer Prediction"),
    
    sidebarPanel(
      helpText("Please provide the approximate size of your/your patient breast tumor"),
      sliderInput("TumorSize", label = h3("Tumor Size in cm"),
                  min = 0, max = 6, value = 2)
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue1"),
      h4('your breast cancer risk is'),
      helpText("we use your tumor size to predict your breast cancer risk, on a 0 to 1 scale"),
      verbatimTextOutput("prediction")
    )
  )
)
