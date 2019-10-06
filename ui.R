#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  titlePanel("Francs to be converted to Euro"),
  
  sidebarLayout(position = "left",
                sidebarPanel(
                  radioButtons("currency","Choose currency:",
                  c("Belgian Franc"="BEF",
                    "Austrian Schilling"="ATS",
                    "Spanish Pesetas"="ESP",
                    "Dutch guilder" ="NLG",
                    "Italian Lira" ="ITL",
                    "French Franc" ="FRF")),
                  sliderInput("amount","Amount :",
                              min =1, max =1000, value = 100)
                ),
                mainPanel(h5("These conversion rates were fixed by the European Union on December 31, 1998."),h4( "Amount in EUROS"),h3(textOutput("out1")))
                )
  )
)




