#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
data(euro)
shinyServer(function(input, output) 
{
  forex = reactive({
    
    #input$francs
    if (input$currency=="FRF"){
      return(euro[6] * input$amount)
   } else {
     if (input$currency=="ATS"){
       return(euro[1] * input$amount)
     }
     if (input$currency=="BEF"){
       return(euro[2] * input$amount)
     }
     if (input$currency=="ESP"){
       return(euro[4] * input$amount)
     }
     if (input$currency=="ITL"){
       return(euro[8] * input$amount)
     }
     if (input$currency=="NLG"){
       return(euro[10] * input$amount)
     }
  }})
  
  output$out1 = renderText({forex()})
  
}
)


