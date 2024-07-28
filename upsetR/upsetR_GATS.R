# Specific library
library(UpSetR)

# Dataset
input <- c(
  Smoking = 7.2,
  Smokeless = 17.9,
  "Smoking&Smokeless"=3.4
)

upset(fromExpression(input), 
      order.by = "degree", #freq #degree 
)

upset(fromExpression(input), 
      order.by = "freq", #freq #degree 
)

# Plot
upset(fromExpression(input), 
      nintersects = 40, 
      nsets = 6, 
      order.by = "freq", #freq #degree 
      decreasing = T, 
      mb.ratio = c(0.6, 0.4),
      number.angles = 0, 
      text.scale = 1.1, 
      point.size = 2.8, 
      line.size = 1
)