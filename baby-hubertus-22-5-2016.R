library(magrittr)

devtools::load_all()

brewnotes::strike_decoc_topoff_sparge_gal(grain_lbs = 11.7,
                                          mash_thickness = 1.5) %T>%
  print() %>%
  brewnotes::gal_to_lbs() %>%
  print() %>%
  `+`(2.3)                              # tare weight on bucket
