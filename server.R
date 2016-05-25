server <- function(input, output) {
  library(ggplot2)
  rental <- select(mpg, manufacturer, model, year, cty, hwy, class)
  output$Rental <- renderTable({
      filtdata <-
        rental %>%
      filter(cty >= input$citymilesInput[1],
               cty <= input$citymilesInput[2],
             hwy >= input$hwymilesInput[1],
             hwy <= input$hwymilesInput[2],
             class == input$classInput
          
      )
      filtdata
    })
}