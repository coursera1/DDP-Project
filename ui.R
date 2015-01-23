shinyUI(fluidPage(
        titlePanel("Interactive Server Graph"),
        
        sidebarLayout(
                sidebarPanel(
                        h3("Input"),
                        fileInput("serverZip", "Upload servers Zip file", multiple=FALSE, accept="application/zip"),
                        fileInput("eventsCsv", "Upload events csv file", multiple=FALSE, accept="text/csv"),
                        h3("Graph Tuning"),
                        dateRangeInput("dateRange", "Select date range for graphs", start="2014-11-01"),
                        sliderInput("breaks", "X axis ticks", 0, 48, 6, 3, round=TRUE),
                        sliderInput("yLimit", "Y axis limit", 0, 10, 4, 1, round=TRUE)),
                mainPanel(h3("Graphs"),
                          plotOutput("G1"),
                          h3("Server Values"),
                          dataTableOutput("serverValue"),
                          h3("Events"),
                          dataTableOutput("tEvents")
                )
        )
))