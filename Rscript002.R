#https://www.youtube.com/watch?v=yDZljicdLAk

library(tidyverse)

people <- tribble(
  ~Name,
  "Berj Akian",
  "Stan Watts",
  "George Perreault"
)

#people %>%
#  separate(Name, into = c("First", "Last"), sep = "/") -> people2



people %>%
  separate(Name, into = c("First", "Last"), sep = c(" ")) %>%
  head(1)

           
           