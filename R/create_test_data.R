#' Prepare test data for knowledge level analysis
#'
#' This function prepares the test data by standardizing the knowledge level
#' categories, converting UNS to an ordered factor, selecting only the relevant
#' columns (STG, PEG, UNS), and removing any rows with NA values.
#'
#' @param knowledge_test_data A data frame containing the raw test data
#'   with at least STG, PEG, and UNS columns
#'
#' @return A cleaned data frame with standardized UNS levels as ordered factors
#' @export
#'
#' @examples
#' \dontrun{
#' # Load raw data from Excel
#' raw_data <- read_excel("data/data.xls", 3)
#'
#' # Prepare the test data
#' clean_data <- create_test_data(raw_data)
#' }
create_test_data <- function(knowledge_test_data) {
    # convert necessary targets to correct format
    knowledge_test_data[knowledge_test_data == "Very Low"] <- "very_low"

    # Let targets be ordered factors, select correct columns, drop NA values
    knowledge_test_data <- knowledge_test_data %>%
        mutate(UNS = factor(UNS,
            levels = c("very_low", "Low", "Middle", "High"),
            ordered = TRUE
        )) %>%
        dplyr::select(STG, PEG, UNS) %>%
        drop_na()
    return(knowledge_test_data)
}

