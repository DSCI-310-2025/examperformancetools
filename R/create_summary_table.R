#' Create a summary table with the first 6 rows of data
#'
#' This function takes a data frame and creates a summary table by selecting
#' the first 6 rows. It then writes this summary to a CSV file
#' at the specified path.
#'
#' @param data A data frame containing the data to summarize
#' @param path A string specifying the file path where the CSV will be saved
#'
#' @return The head of the data frame (first 6 rows) invisibly
#' @export
#'
#' @examples
#' \dontrun{
#' # Create a summary table of the knowledge_train_data
#' create_summary_table(knowledge_train_data, "results/table1.csv")
#' }

#' @importFrom magrittr %>%
#' @importFrom rlang .data
create_summary_table <- function(data, path) {
    result <- utils::head(data, 6)
    readr::write_csv(result, path)
    return(invisible(result))
}
