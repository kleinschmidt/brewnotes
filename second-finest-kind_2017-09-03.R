library(tibble)
library(dplyr)

library(magrittr)

devtools::load_all()


# last few brews:
last_batches <- tribble(
  ~yield, ~grain_pts,
  45*7,   8.4 * 37 + 1.5 * 40 + 0.5 * 37,
  50*6.9, 8*37 + 3.2*29 + 0.5*34,
  82*3 + 35*3.4, 9*37 + 3*33 + 1*32 + 0.5*34
) %>%
  mutate(efficiency = yield / grain_pts) %T>% print()


## efficiency
(this_batch_needed_pts <- 60 * 6)
(this_batch_grain_pts <- 13.2 * 37 + 0.5 * 34)
last_batches %>%
  mutate(pred_yield = efficiency * this_batch_grain_pts,
         pred_needed_pts = this_batch_needed_pts / efficiency,
         frac_of_grain = pred_needed_pts / this_batch_grain_pts,
         weight_of_2row = (pred_needed_pts - 0.5*34) / 37)

# so I'll use 11.5 lbs of the 2row.



brewnotes::strike_decoc_topoff_sparge_gal(grain_lbs = 12.0,
                                          mash_thickness = 1.5) %T>%
  print() %>%
  brewnotes::gal_to_lbs() %>%
    `+`(2.3)                              # tare weight on bucket
