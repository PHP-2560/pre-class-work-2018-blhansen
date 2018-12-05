library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
      numericInput(inputId="num", label="Input Z value", value = 0),
      textOutput(outputId="message"),
      textOutput(outputId = "p_value"),
      tags$head(tags$style("#p_value{color: pink;
                                 font-size: 100px;
                                font-style: bold;
                                font-family: 'Comic Sans MS', 'Comic Sans', cursive
                           }",
                           "#num{color: pink;
                           font-family: 'Comic Sans MS', 'Comic Sans', cursive
                           }",
                           "#message{color: pink;
                            font-size: 70px;
                            font-family: 'Comic Sans MS', 'Comic Sans', cursive
                           }",
                           ".shiny-input-container:first-child{color: pink;
                                 font-size: 40px;
                           font-style: bold;
                           font-family: 'Comic Sans MS', 'Comic Sans', cursive
                           }",
                           "body{
                            background: url('https://timedotcom.files.wordpress.com/2018/08/new-zealand-cat-ban.jpg');
                            background-size: cover;
                           }"
                         )
      ),
      "Sorry"
      )


# Define server logic required to draw a histogram
server <- function(input, output) {
  output$message <- renderText({"Here is your p-value:"})
  output$p_value <- renderText({
    as.character(1 - pnorm(input$num))
  })
}

# Run the application 
shinyApp(ui = ui, server = server)

