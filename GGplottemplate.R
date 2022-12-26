######################
# Chicago Policy Review Ggplot Template
# Created by Zai Rutter
# December 25 2022
######################
library(devtools)


########################################################
# Defining a theme

#' Title:CPR DataViz Package
#'
#'This is a theme used with ggplot (feature of tidyverse) that the Data Viz team at the Chicago Policy Review should use in their graphics.In order for this to work please install the font faces that are found on the CPR google drive under "Template Font Faces MUST DOWNLOAD"
#' This theme includes theme_CPR which corresponds with ggplot and includes several color pallets under cpr_palette.
#'
#'
#' @return
#' @export
#' @importFrom graphics rect par image text
#' @importFrom grDevices rgb
#' @examples
#'
#'
#'

theme_CPR <- function(){
  font<-"Neue Haas Grotesk Text Pro"
  base
  theme(
    plot.background = element_rect(fill = "#FDFDFD"),
    panel.background = element_rect(fill = "#FDFDFD"),

  # ifelse(y.line.minor=F,panel.grid.minor.y = element_blank(),
  #        panel.grid.minor.y = element_line(size=1, color ="#6e7b88")),
  # ifelse(x.line.minor=F,panel.grid.minor.x = element_blank(),
  #        panel.grid.minor.x = element_line(size=1, color ="#6e7b88" )),
  # ifelse(y.line.major=T, panel.grid.major.y = element_line(size = 1, color = "#6e7b88"),
  #        panel.grid.major.y = element_blank()),
  # ifelse(x.line.major=F,panel.grid.major.x = element_blank(),
          # panel.grid.major.x = element_line(size = 1, color = "#6e7b88")),


  panel.grid.minor.y = element_blank(),
  grid.minor.x = element_blank(),
  panel.grid.major.y = element_line(size = 1, color = "#6e7b88"),
  panel.grid.major.x = element_blank(),
    axis.line = element_line(color = "#6e7b88", size = .75),


    #Plot Caption
    # plot.caption.position = "plot",
    plot.caption = element_text(hjust = 0,
                                family = "Neue Haas Grotesk Text Pro",
                                color = "#6d7a88",
                                size = 8,
                                margin = margin(0,30,0,0)),

    #Legend
    legend.background = element_rect(fill = "#FDFDFD"),
    legend.text=element_text(family = "Neue Haas Grotesk Text Pro",
                             color = "#6e7b88",
                             size = 10),
    legend.title = element_text(family = "Neue Haas Grotesk Text Pro",
                                color = "#222629",
                                size = 12),

    #Titles
    plot.title = element_text(family = "Neue Haas Grotesk Display Pro 65 Medium",
                              color = "#222629",
                              size = 22,
                              vjust = 9,
                              margin = margin(0,0,15,0, unit = "pt")
    ),
    plot.subtitle = element_text(family = "Neue Haas Grotesk Text Pro",
                                 color = "#6d7a88",
                                 size = 12,
                                 vjust = 10,
                                 margin = margin(-15,2,0,0,unit = "pt")
    ),

    axis.title.x = element_text(family = "Neue Haas Grotesk Text Pro",
                                color = "#222629",
                                size = 14,
                                margin = margin(10,0,0,0,unit = "pt")
    ),
    axis.title.y = element_text(family = "Neue Haas Grotesk Text Pro",
                                color = "#222629",
                                size = 14,
                                margin = margin(0,10,0,0,unit = "pt")),

    axis.text.x = element_text(family = "Neue Haas Grotesk Text Pro",
                               color = "#6e7b88",
                               size = 12),
    axis.text.y = element_text(family = "Neue Haas Grotesk Text Pro",
                               color = "#6e7b88",
                               size = 12),

    #Plot Margin
    plot.margin = margin(2, 1, 1, 1, "cm"))
  complete = T
}
