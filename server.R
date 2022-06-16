 
#

library(shiny)
library(babynames)
library(ggplot2)
library(dplyr)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$greeting <- renderText({
        
        paste0("Hello ", input$name, "!")
    })

    output$plot1 <- renderPlot({

         
        my_name <- filter(babynames, name == input$name, sex == input$sex)
        
        ggplot(data = my_name) + geom_line(mapping = aes(x = year, y = prop)) +
            labs(title = paste0("Popularity of the name ", input$name))


    })
    
    
})