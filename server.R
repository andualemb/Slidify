# Coursera - Developing Data Products- Course Project
# server.R file for the shiny app 
# Define server logic required to recommend the best car for a trip.

# This application is developed to assist users in choosing the car that best fit for their trip. 
#The application uses mtcars dataset, from [R]  


library(shiny) 
library(datasets) 
library(dplyr) 


shinyServer(function(input, output) { 
  
  
  # Show the cars that correspond to the filters 
  output$table <- renderDataTable({ 
    disp_seq <- seq(from = input$disp[1], to = input$disp[2], by = 0.1) 
    hp_seq <- seq(from = input$hp[1], to = input$hp[2], by = 1) 
    data <- transmute(mtcars, Car = rownames(mtcars), MilesPerGallon = mpg,  
                      GasolineExpenditure = input$dis/mpg*input$cost, 
                      Cylinders = cyl, Displacement = disp, Horsepower = hp,  
                      Transmission = am) 
    data <- filter(data, GasolineExpenditure <= input$gas, Cylinders %in% input$cyl,  
                   Displacement %in% disp_seq, Horsepower %in% hp_seq, Transmission %in% input$am) 
    data <- mutate(data, Transmission = ifelse(Transmission==0, "Automatic", "Manual")) 
    data <- arrange(data, GasolineExpenditure) 
    data 
  }, options = list(lengthMenu = c(5, 15, 30), pageLength = 30)) 
}) 