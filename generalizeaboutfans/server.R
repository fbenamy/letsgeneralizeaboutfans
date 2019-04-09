library(shiny)
library(tidyverse)
library(ggplot2)

songs_df <- read_csv("songs_df.csv")
server <- function(input, output) {
  output$seasonsboxplot <- renderPlot({
    ggplot(remove_missing(songs_df, na.rm = TRUE,
                          vars = c(input$song_var)),
           aes_string(x = "season", y = input$song_var)) +
      geom_boxplot() + coord_flip()
  }) 
} 
