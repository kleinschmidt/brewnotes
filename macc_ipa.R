# http://brulosophy.com/recipes/macc-ipa-by-ray-found/

library(magrittr)

devtools::load_all()

brewnotes::strike_decoc_topoff_sparge_gal(grain_lbs = 13.9,
                                          mash_thickness = 1.5) %T>%
  print() %>%
  brewnotes::gal_to_lbs() %>%
  `+`(2.3)                              # tare weight on bucket

# need 25 IBUs of magnum for FWH, that's about half an ounce

# measured 15.6 Bx (1.064) before boil but I think that's high because it's only
# 1.067-8 in fermentor
#
# after one week: 8.9 Bx (1.017).  that's about what it should be I think.  well
# note quite, apparently the attenuation of this yeast is 81%, which would put
# it at 1.013...
