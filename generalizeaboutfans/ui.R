#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- fluidPage(
  titlePanel("Crazy Ex-Girlfriend Song Attributes by Season"),
    sidebarLayout(
      sidebarPanel(
        selectInput("song_var", "Song Attributes", 
                    choices = c("acousticness", "danceability", 
                                "speechiness","energy", "liveness",
                              "loudness", "valence", "tempo"))
      ),
      mainPanel(
        plotOutput("seasonsboxplot")
      )
    )
)
