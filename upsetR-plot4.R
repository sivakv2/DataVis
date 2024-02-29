# Specific library
library(UpSetR)

# Dataset
input <- c(
  rmarkdown = 15,
  leaflet = 18,
  shiny = 12,
  "rmarkdown&shiny"  = 15,
  "rmarkdown&leaflet&shiny" = 20)

upset(fromExpression(input), 
      order.by = "degree", #freq #degree 
)

upset(fromExpression(input), 
      order.by = "degree", #freq #degree 
)