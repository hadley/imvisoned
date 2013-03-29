rescale01 <- function(x) {
  rng <- range(x, na.rm = T)
  (x - rng[1]) / (rng[2] - rng[1])
}

circle <- function(x, y, radius) {
  theta <- seq(0, 2 * pi, length = 50)
  cbind(x + sin(theta) * radius, y + cos(theta) * radius)
}

#' @export
circles <- function(x, y, radius) {
  polys <- mapply(circle, x, y, radius, SIMPLIFY = FALSE)
  polys <- lapply(polys, rbind, c(NA, NA))
  do.call("rbind", polys)
}

#' @export
centroid <- function (x1, y1) {
  n <- length(x1)
  wrap <- c(n, 1:(n - 1))
  x2 <- x1[wrap]
  y2 <- y1[wrap]
  a <- x1 * y2 - x2 * y1
  s <- sum(a) * 3
  if (s < 1e-3) {
    c(mean(x1), mean(y1))
  } else {
    c(sum((x1 + x2) * a)/s, sum((y1 + y2) * a)/s)
  }
}

#' @export
area <- function (x1, y1) {
  n <- length(x1)
  wrap <- c(n, 1:(n - 1))
  x2 <- x1[wrap]
  y2 <- y1[wrap]
  b <- (x1 * y2 - x2 * y1)
  abs(sum(b)) / 2
}

info <- function(df) {
  info <- c(centroid(df$long, df$lat), area(df$lat, df$long))
  names(info) <- c("long", "lat", "area")
  info
}
