#https://www.youtube.com/watch?v=rKvybSJ4nM0

library(tidyverse)

grades1 <- data.frame(
  First = c("Mark", "Dave", "Jackie"),
  Last = c("Gingrass", "Doe", "Smith"),
  Grade = c(94, 79, 68)
)

grades2 <- tibble(
  First = c("Mark", "Dave", "Jackie"),
  Last = c("Gingrass", "Doe", "Smith"),
  Grade = c(94, 79, 68)
)


grades3 <- tribble(
  ~First,    ~Last,       ~Grade,
  "Mark",    "Gingrass",   "94",
  "Dave",    "Doe",        "79",
  "Jackie",  "Smith",      "68"
)

