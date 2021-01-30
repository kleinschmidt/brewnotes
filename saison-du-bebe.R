library(magrittr)

devtools::load_all()

grain_lbs <- 8.4 + 1.5 + 0.5

brewnotes::strike_decoc_topoff_sparge_gal(grain_lbs = grain_lbs,
                                          mash_thickness = 1.5) %T>%
  print() %>%
  brewnotes::gal_to_lbs() %>%
  print() %>%
  add(2.3)                              # tare weight on bucket
