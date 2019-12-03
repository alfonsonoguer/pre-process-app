library("tidyverse")
library("readxl")
library("writexl")
library("shiny")
write_xlsx(x = iris, path = "app/IRIS.xlsx")
my_data2 <- read_excel(path = "app/IRIS.xlsx")
source("app/pre_process.R")
my_data <- rename(my_data2)
# comment source and uncomment ui and server and it will work fine
source("app/ui.R")
source("app/server.R")
# ui <- pageWithSidebar(
#   headerPanel('my_data k-means clustering'),
#   sidebarPanel(
#     selectInput('xcol', 'X Variable', names(my_data)),
#     selectInput('ycol', 'Y Variable', names(my_data),
#                 selected=names(my_data)[[2]]),
#     numericInput('clusters', 'Cluster count', 3,
#                  min = 1, max = 9)
#   ),
#   mainPanel(
#     plotOutput('plot1')
#   )
# )
# server <- function(input, output, session) {
#   
#   # Combine the selected variables into a new data frame
#   selectedData <- reactive({
#     my_data %>% select(input$xcol, input$ycol)
#   })
#   
#   clusters <- reactive({
#     kmeans(selectedData(), input$clusters)
#   })
#   
#   output$plot1 <- renderPlot({
#     palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
#               "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
#     
#     par(mar = c(5.1, 4.1, 0, 1))
#     plot(selectedData(),
#          col = clusters()$cluster,
#          pch = 20, cex = 3)
#     points(clusters()$centers, pch = 4, cex = 4, lwd = 4)
#   })
#   
# }
servidor <- server
shinyApp(ui, server)
