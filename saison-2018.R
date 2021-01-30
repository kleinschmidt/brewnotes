# http://brulosophy.com/recipes/macc-ipa-by-ray-found/

library(magrittr)

devtools::load_all()

brewnotes::strike_decoc_topoff_sparge_gal(grain_lbs = 10.0,
                                          mash_thickness = 1.5) %T>%
  print() %>%
  brewnotes::gal_to_lbs() %>%
  `+`(2.3)                              # tare weight on bucket

# kind of stuck sparge at the end; 6.5 gallons at 12° Bx (1.046-48) for 300-312
# gravity units (shooting for 5.5 of 1.050 or 275 so it's going to come in high.
