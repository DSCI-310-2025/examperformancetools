#' Create a percentage table grouped by knowledge level (UNS)
#'
#' This function calculates the count and percentage of observations for each
#' knowledge level (UNS) category in the provided data. It then writes this
#' summary to a CSV file at the specified path.
#'
#' @param data A data frame containing a UNS column with knowledge levels
#' @param path A string specifying the file path where the CSV will be saved
#'
#' @return A data frame with columns for UNS, count, and percentage
#' @export
#'
#' @examples
#' \dontrun{
#' # Create a percentage table for knowledge levels in training data
#' create_percentage_table(knowledge_train_data, "results/table3.csv")
#' }

#' @importFrom magrittr %>%
#' @importFrom rlang .data
create_percentage_table <- function(data, path) {
    num_obs <- nrow(data)
    result <- data %>%
        dplyr::group_by(UNS) %>%
        dplyr::summarize(
            count = dplyr::n(),
            percentage = dplyr::n() / num_obs * 100
        )
    readr::write_csv(result, path)
    return(invisible(result))
}

