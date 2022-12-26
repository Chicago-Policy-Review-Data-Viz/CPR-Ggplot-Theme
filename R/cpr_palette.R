
#' Complete list of palettes
#'@export

cpr_colours <- list(
  UChicago_spectrum = c("#8b0021","#7f7673","#c6c3c4","#fbaf18", "#d5802d", "#983535",
                                 "#91ab59","#56583e","#357c95","#3f1d2b"),
                                 UChicago_core = c("#8b0021","#7f7673","#c6c3c4"),
  CPR_Gray = c("#fDfDfD", "#eff1f2","#222629","#6e7b88"),
  CPR_neon = c("#273E47","#75DDDD","#6E7B88","#F35B04","#DDF45B"),
  coolnight = c("#0d1b2a","#1b263b","#415a77","#778da9","#e0e1dd"),
  mutedrainbow = c("#f94144","#f3722c","#f8961e","#f9844a","#f9c74f","#90be6d","#43aa8b",
                            "#4d908e","#577590","#277da1"),
                            Cyberpunk= c("#7400b8","#6930c3","#5e60ce","#5390d9","#4ea8de","#48bfe3","#56cfe1",
                                                  "#64dfdf","#72efdd","#80ffdb")
)


#' CPR Colour Palette
#'
#' @param n Number of colours desired. If omitted then all colours in palette are used.
#' @param type Either "continuous" or "discrete". Use continuous if you want
#'   to automatically interpolate between colours.
#' @param name Name of desired palette. Choices are:
#' \code{UChicago_spectrum}, \code{UChicago_core}, \code{CPR_Gray}, \code{CPR_neon },
#'   \code{coolnight}, \code{mutedrainbow},  \code{Cyberpunk}
#'
#' @return a vector of colours

#'@keywords colors
#' @examples
#' cpr_palette("UChicago_spectrum")
#' cpr_palette("UChicago_core")
#' cpr_palette("CPR_Gray")
#' cpr_palette("CPR_neon")
#' cpr_palette("coolnight")
#' cpr_palette("mutedrainbow")
#' cpr_palette("Cyberpunk")
#'
#' # If you need more colours than normally found in a palette, you
#' # can use a continuous palette to interpolate between existing
#' # colours
#'
#' #' pal <- cpr_palette(21, name = "Cyberpunk", type = "continuous")
#' image(volcano, col = palette)
#'
#'
#' @export
cpr_palette <- function(name, n, cpr_palette = cpr_colors, type = c("discrete", "continuous")) {
  palette <- cpr_colours[[name]]
  if (missing(n)) {
    n <- length(palette)
  }

  if (is.null(palette))
    stop("Palette not found.")

  type <- match.arg(type)
  out <- switch(type,
                continuous = grDevices::colorRampPalette(palette)(n),
                discrete = palette[1:n]
  )
  structure(out, name = name, class = "palette")
}



#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
print.palette <- function(x, ...) {
  n <- length(x)
  old <- par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(par(old))

  image(1:n, 1, as.matrix(1:n), col = x,
        ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  rect(0, 0.9, n + 1, 1.1, col = rgb(1, 1, 1, 0.8), border = NA)
  text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}

#' heatmap
#'
#' A heatmap example

