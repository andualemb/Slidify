
# Coursera - Developing Data Products- Course Project
# This application is developed to assist users in choosing the car that best fit for their trip. 
#The application uses mtcars dataset, from [R]  

library(markdown) 
library(shiny)


shinyUI(navbarPage("List of Recommended Cars For Your Trip", 
  
  # Application title
 
  tabPanel("Table", 
   
           # Sidebar 
           sidebarLayout( 
             sidebarPanel( 
               helpText("Please enter trip information and the specs of the car that you want below"), 
               numericInput('dis', 'Distance of Trip  (in miles):', 100, min = 1, max = 1000), 
               numericInput('cost', 'Gas Price (per gallon):', 3.61, min = 3.00, max = 4.99, step=0.01), 
               numericInput('gas', 'Maximum spend on gas:', 50, min=1, max=300), 
               checkboxGroupInput('cyl', 'Number of Cylinders of the Car:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)), 
               sliderInput('disp', 'Displacement of the Car', min=70, max=480, value=c(70,480), step=10), 
               sliderInput('hp', 'Horsepower of the Car', min=50, max=340, value=c(50,340), step=10), 
               checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1)) 
             ), 
             
             
             mainPanel( 
               dataTableOutput('table') 
             ) 
           ) 
  ), 
  tabPanel("About",
           mainPanel( 
             includeMarkdown("about.Rmd") 
           ) 
  ) 
) 
)    