library(shiny)
library(ggplot2)
library(dplyr)
rental <- select(mpg, manufacturer, model, year, cty, hwy, class)
ui <- fluidPage(
  titlePanel("Car Rental Options"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("citymilesInput", "City Miles", min = 9, max = 35, value = c(20, 35)),
      sliderInput("hwymilesInput", "Highway Miles", min = 12, max = 44, value = c(12, 44)),
      selectInput("classInput", "Class", choices = c("compact", "economy", "midsize", "suv", "2seater", "minivan", "pickup", "subcompact"))
    ),
    mainPanel(
      tableOutput("Rental")
    )
  )
)