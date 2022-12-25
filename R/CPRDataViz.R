#' Title
#'
#'This is a theme used with ggplot (feature of tidyverse) that the Data Viz team at the Chicago Policy Review should use in their graphics.
#' In order for this to work please install the font faces that are found on the CPR google drive under "Template Font Faces MUST DOWNLOAD"

#' @return

#' @export
#'
#' @examples
theme_cpr<- function(){
  font<-"Neue Haas Grotesk Text Pro"
  theme(
    plot.background = element_rect(fill = "#FDFDFD"),
    panel.background = element_rect(fill = "#FDFDFD"),
    panel.grid.major.y = element_line(size = 1, color = "gray94"),
    panel.grid.major.x = element_blank(),
    panel.grid.minor.y = element_line(size = 1, color = "#FDFDFD"), #this is not used
    panel.grid.minor.x = element_blank(),

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
}



