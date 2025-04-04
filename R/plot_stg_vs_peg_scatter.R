#' Plot a scatterplot of STG vs PEG colored by UNS
#'
#' This function creates a scatterplot of STG vs PEG colored by UNS level
#' and saves the figure to a specified file path.
#'
#' @param data A data frame containing STG, PEG, and UNS columns
#' @param path A string indicating the output file path for the plot
#'
#' @return The ggplot object (invisible)
#' @export
plot_stg_vs_peg_scatter <- function(data, path) {
  plot <- data %>%
    ggplot(aes(x = STG, y = PEG, colour = UNS)) +
    labs(
      x = "Degree of study time",
      y = "Exam performance",
      colour = "Knowledge Level of Users"
    ) +
    geom_point() +
    theme(text = element_text(size = 20))
  ggsave(filename = path, plot = plot, width = 6, height = 4, dpi = 300)
  return(invisible(plot))
}
