
library(dplyr)
library(brewnotes)

brewnotes::strike_decoc_topoff_sparge_gal(grain_lbs = 13.5,
                                          mash_thickness = 1.5) %T>%  print() %>%

  brewnotes::gal_to_lbs() %T>%  print() %>%

  `+`(2.3)                              # tare weight on bucket
