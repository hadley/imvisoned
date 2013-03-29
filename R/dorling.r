#' Generate a dorling cartogram.
#'
#' @export
dorling <- function(nodes, radii, strength = 0.001) {

  xrng <- range(nodes[, 1])
  yrng <- range(nodes[, 2])

  center <- c(mean(xrng), mean(yrng))
  maxrng <- max(c(diff(xrng), diff(yrng)))
  minrng <- min(c(diff(xrng), diff(yrng)))

  newnodes <- nodes + perturbate(nodes, 1e-6 * maxrng)

  odisp <- 1
  while (!all(odisp < 1e-5)){
    odisp <- nonoverlap(newnodes, radii)
    newnodes <- newnodes + odisp
  }

  alpha <- 0.95
  while (alpha > 0.05){
    gdisp <- gravity(newnodes, strength, center, alpha)
    hdisp <- homing2(nodes, newnodes, 0.05 * minrng, 1e-0, alpha)
    odisp <- nonoverlap(newnodes, radii) * alpha

    newnodes <- newnodes + gdisp + hdisp + odisp
    alpha <- 0.9 * alpha
  }

  odisp <- 1
  while (!all(odisp < 1e-5)){
    odisp <- nonoverlap(newnodes, radii)
    newnodes <- newnodes + odisp
  }

  newnodes
}


# library('maps')
# library('plyr')
#
# par(bg = "gray90", oma = c(0,0,0,0))
# states <- map_data('state')
# centers <- ddply(states, "region", summarize,
#   centroidx = centroid(long, lat)[1],
#   centroidy = centroid(long, lat)[2],
#   area = area(long, lat) / 5)
#
# nodes <- as.matrix(centers[, c('centroidx', 'centroidy')])
# weights <- 1 * log(as.matrix(centers[, 'area']) + 1)
# pos <- dorling(nodes, 3 * weights)
