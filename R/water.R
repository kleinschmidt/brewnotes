grain_absorb_gal_per_lb <- 0.125
tun_loss_gal <- 0.5

#' Calculate strike, decoction, top-off, and sparge volume
#'
#' @param grain_lbs Weight of grain
#' @param mash_thickness Qts/lb
#' @param decoction_ratio The proportion of the strike water to pull for
#' decoction (defaults to 0.33)
#' @param runnings_gal Volume of first and second runnings (defaults to 3.5)
#' @return Named vector of strike, decoction, top-off, and sparge gallons
strike_decoc_topoff_sparge_gal <- function(grain_lbs,
                                           mash_thickness,
                                           decoction_ratio = 1/3,
                                           runnings_gal = c(3.5, 3.5)) {
  strike_qts <- grain_lbs * mash_thickness
  strike_gal <- strike_qts / 4

  decoction_gal <- strike_gal * 0.33

  top_off_gal <- runnings_gal[1] -
    strike_gal +
    grain_absorb_gal_per_lb * grain_lbs +
    tun_loss_gal

  sparge_gal <- runnings_gal[2]

  if (top_off_gal < 0) {
    sparge_gal <- sparge_gal + top_off_gal
    top_off_gal <- 0
  }
  
  c(strike_gal    = strike_gal,
    decoction_gal = decoction_gal,
    top_off_gal   = top_off_gal,
    sparge_gal    = sparge_gal)
}

#' Convert gallons of water to pounds
#'
#' Uses 2.08 lbs/qt.
#' 
#' @param gal Gallons
#' @return Pounds
#' @export
gal_to_lbs <- function(gal) gal * 4 * 2.08
