library(magrittr)

devtools::load_all()

brewnotes::strike_decoc_topoff_sparge_gal(grain_lbs = 9 + 3 + .5 + .5 + .5 + .25,
                                          mash_thickness = 1.5) %T>%
  print() %>%
  brewnotes::gal_to_lbs() %>%
  `+`(2.3)                              # tare weight on bucket
