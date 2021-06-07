library(shiny)
library(dplyr)
library(tidyr)

M <- read.csv("midterm-results.csv")
Q <- read.csv("quiz-categories.csv")
C <- subset(M, select = c(Q1_c:Q30_c))
NC <- apply(C, 2, sum)

QNC <- as.data.frame(NC)
QNC$NQ <- c(1:30)


ui <- fluidPage(
  
  # Application title
  titlePanel("Midterm and Quiz"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset",
                  "Choose one dataset:",
                  choices = c("quiz-categories" = "QC", "midterm-results" = "MR", 
                  "question-correct" = "IG")),
   conditionalPanel(
     condition = "input.dataset == 'QC'", 
     sliderInput("num", "Number of observations:", min = 1, max = 30, value = 10)
   ),
   conditionalPanel(
     condition = "input.dataset == 'MR'",
     sliderInput("num2", "Number of observations:", min = 1, max = 26, value = 10)
   ),
   conditionalPanel(
     condition = "input.dataset == 'IG'",
     sliderInput("num3", "Number of observations:", min = 1, max = 30, value = 10)
   )
   ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(
       type = "tabs",
        tabPanel(
         "Summary",
         verbatimTextOutput("summary")
       ),
       tabPanel("Table", tableOutput("table")),
       tabPanel("Plot", plotOutput("plot"))
      ))
  ))

