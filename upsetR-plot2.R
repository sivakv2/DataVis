# Specific library
library(UpSetR)

#library(sets)
class = c("rmarkdown","dplyr","leaflet","packages","rshiny","igraph","bookdown")
k = set_power(class)

class = c("Ses1", "ses2","ses3","ses4")
k = set_power(class)





# Dataset
input <- c(
  rmarkdown = 15,
  dplyr = 23,
  leaflet = 18,
  packages = 25,
  "rmarkdown&dplyr"  = 15

#  whatsapp = 3870,
#  "facebook&twitter" = 467,
#  "twitter&facebook" = 467,
#  "facebook&instagram" = 329,
#  "facebook&twitter&instagram" = 520
# "whatsapp&facebook" = 1200,
#  "whatsapp&facebook&instagram" = 800
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

{}, 
{"Ses1"}, 
{"ses2"}, 
{"ses3"}, 
{"ses4"}, 
{"Ses1", "ses2"}, 
{"Ses1", "ses3"}, 
{"Ses1", "ses4"},
{"ses2", "ses3"}, 
{"ses2", "ses4"}, 
{"ses3", "ses4"}, 
{"Ses1", "ses2", "ses3"}, 
{"Ses1", "ses2", "ses4"}, 
{"Ses1", "ses3", "ses4"}, 
{"ses2", "ses3", "ses4"}, 
{"Ses1", "ses2", "ses3", "ses4"}}





