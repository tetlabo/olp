olpAddin <- function(){
#    library(shiny)
    youtube_url <- rstudioapi::showPrompt(title = "講師から指示されたYouTube LiveのURLを入力してください", message = "講師から指示されたYouTube LiveのURLを入力してください")
    bitly_url <- rstudioapi::showPrompt(title = "講師から指示されたLiveCodeのURLを入力してください", message = "講師から指示されたLiveCodeのURLを入力してください")
    tubeplayR::tubeplay(youtube_url)
    browseURL(bitly_url)
}
