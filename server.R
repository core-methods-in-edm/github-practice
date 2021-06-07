library(shiny)
library(ggplot2)

server <- function(input, output) {
  
  datasetInput <- reactive({
    switch(input$dataset, "QC" = Q, "MR" = M, "IG" = QNC)
  })
  
  output$summary <- renderPrint({
    if(input$dataset == "QC"){
      summary(datasetInput()[1:input$num,])
    }
    else if(input$dataset == "MR"){
      summary(datasetInput()[1:input$num2,])
    }
  })
  output$table <- renderTable({
    if(input$dataset == "QC"){
      head(datasetInput(), n = input$num)
    }
    else if(input$dataset == "MR"){
      head(datasetInput(), n = input$num2)
    }
    else{head(datasetInput(), n = input$num3)}
  })
  output$plot <- renderPlot({
    if(input$dataset == "IG"){
      NQ <- datasetInput()$NQ
      NC <- datasetInput()$NC
      ggplot(datasetInput()[1:input$num3,], aes(NQ, NC)) + 
        geom_bar(aes(fill = NQ), stat = "identity")
    }
  })
  
}
