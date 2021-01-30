grain_lbs <- 12.25

mash_thickness <- 1.5                   # quarts per lb

strike_qts <- grain_lbs * mash_thickness
strike_gal <- strike_qts / 4

runnings_gal <- c(3.5, 3.5)
grain_absorb_gal_per_lb <- 0.125
tun_loss_gal <- 0.5

top_off_gal <- runnings_gal[1] -
  strike_gal +
  grain_absorb_gal_per_lb * grain_lbs +
  tun_loss_gal

sparge_gal <- runnings_gal[2]

(water_gal <- c(strike_gal, top_off_gal, sparge_gal))
(water_lbs <- water_gal * 4 * 2.08)


(decoction_gal <- strike_gal * 0.33)
