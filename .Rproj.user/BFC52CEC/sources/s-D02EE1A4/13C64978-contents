ui <- pageWithSidebar(
  headerPanel('my_data k-means clustering'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(my_data)),
    selectInput('ycol', 'Y Variable', names(my_data),
                selected=names(my_data)[[2]]),
    numericInput('clusters', 'Cluster count', 3,
                 min = 1, max = 9)
  ),
  mainPanel(
    plotOutput('plot1')
  )
)