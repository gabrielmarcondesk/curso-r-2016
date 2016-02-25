
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(ggplot2)


fluidPage(  
  
  titlePanel("Laboratório VIII"),
  
  sidebarLayout(
    sidebarPanel(
      wellPanel(
        selectInput( inputId = 'y', label = 'Resposta'),
        selectizeInput( inputId = 'x', label = 'Explicativa')
      )
      # coloque aqui um seletor de qual variável do banco de dados será a resposta
      # (somente 'price', 'carat', 'x', 'y', 'z')
      
      # coloque aqui um seletor de qual variável será a explicativa
      # (somente 'price', 'carat', 'x', 'y', 'z')
    ),
    
    mainPanel(
      tags$h2('Gráfico!'),
      plotOutput("reta_ajustada")
    )
  )
)