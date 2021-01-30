library(magrittr)

devtools::load_all()

brewnotes::strike_decoc_topoff_sparge_gal(grain_lbs = 8.9,
                                          mash_thickness = 1.5) %T>%
  print() %>%
  brewnotes::gal_to_lbs() %>%
  `+`(2.3)                              # tare weight on bucket


# gravity needed:
target_gu <- 5.5 * 45 # ~ 250 GU

potential_gu <- 0.25 * 35 + 0.5 * 38 + .25 * 38 + .75 * 35 + 7 * 36

efficiency <- target_gu / potential_gu # 78.5%
