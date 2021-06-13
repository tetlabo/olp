olpAddin <- function(){
    library(shiny)
    youtube_url <- rstudioapi::showPrompt(title = "講師から指示されたYouTube LiveのURLを入力してください", message = "講師から指示されたYouTube LiveのURLを入力してください")
    bitly_url <- rstudioapi::showPrompt(title = "講師から指示されたLiveCodeのURLを入力してください", message = "講師から指示されたLiveCodeのURLを入力してください")
    tubeplayR::tubeplay(youtube_url)

    ui <- fluidPage(titlePanel("Live Code"),

                    mainPanel(fluidRow(
                        htmlOutput("my_test")
                    )
                    )
    )

    server <- function(input, output) {
        output$my_test <- renderUI({
            tags$iframe(src=bitly_url, height=1280, width=800)
        })
    }

    shinyApp(ui, server)
}
