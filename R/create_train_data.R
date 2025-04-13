#' Prepare training data for knowledge level analysis
#'
#' This function prepares the training data by standardizing the knowledge level
#' categories, converting UNS to an ordered factor, selecting only the relevant
#' columns (STG, PEG, UNS), and removing any rows with NA values.
#'
#' @param knowledge_train_data A data frame containing the raw training data
#'   with at least STG, PEG, and UNS columns
#'
#' @return A cleaned data frame with standardized UNS levels as ordered factors
#' @export
#'
#' @examples
#' \dontrun{
#' # Load raw data from Excel
#' raw_data <- read_excel("data/data.xls", 2)
#'
#' # Prepare the training data
#' clean_data <- create_train_data(raw_data)
#' }

#' @importFrom magrittr %>%
#' @importFrom rlang .data
create_train_data <- function(knowledge_train_data) {
    # convert necessary targets to correct format
    knowledge_train_data[knowledge_train_data == "Very Low"] <- "very_low"

    # Let targets be ordered factors, select correct columns, drop NA values
    knowledge_train_data <- knowledge_train_data %>%
        dplyr::mutate(UNS = factor(UNS,
            levels = c("very_low", "Low", "Middle", "High"),
            ordered = TRUE
        )) %>%
        dplyr::select(STG, PEG, UNS) %>%
        tidyr::drop_na()
    return(knowledge_train_data)
}

