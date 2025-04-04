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

#' @importFrom magrittr %>%
#' @importFrom rlang .data
create_uns_summary_table <- function(data, path) {
  result <- data %>%
    dplyr::group_by(.data$UNS) %>%
    dplyr::summarize(
      count = dplyr::n(),
      mean_STG = mean(.data$STG),
      mean_PEG = mean(.data$PEG),
      max_STG = max(.data$STG),
      max_PEG = max(.data$PEG),
      min_STG = min(.data$STG),
      min_PEG = min(.data$PEG)
    )
  readr::write_csv(result, path)
  return(invisible(result))
}

