#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

 
shinyUI(fluidPage(
    textInput("name", "Please enter your first name (E.g. John)", value = "John"),
    textOutput("greeting"),
    selectInput("sex", "Please select your sex:", 
                c("M", "F", "Neither M nor F")),
    plotOutput("plot1")
  
    
)



  
)
 
