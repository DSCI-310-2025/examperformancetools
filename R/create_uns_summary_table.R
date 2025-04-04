#' Create a summary table for knowledge levels
#'
#' This function groups the training data by UNS level and computes summary
#' statistics including count, mean, max, and min for STG and PEG.
#' The summary is saved as a CSV to the given file path.
#'
#' @param data A data frame containing STG, PEG, and UNS columns
#' @param path A string indicating where to save the resulting CSV file
#'
#' @return A summary data frame (invisible)
#' @export
create_uns_summary_table <- function(data, path) {
  result <- data %>%
    group_by(UNS) %>%
    summarize(
      count = n(),
      mean_STG = mean(STG),
      mean_PEG = mean(PEG),
      max_STG = max(STG),
      max_PEG = max(PEG),
      min_STG = min(STG),
      min_PEG = min(PEG)
    )
  write_csv(result, path)
  return(invisible(result))
}

