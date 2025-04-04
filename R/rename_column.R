#' Rename a column in a data frame
#'
#' This function renames a column in a data frame using dplyr's rename function
#' with non-standard evaluation through rlang's sym function.
#'
#' @param df A data frame containing the column to be renamed
#' @param current_column_name A string specifying the current name of the column
#' @param new_column_name A string specifying the new name for the column
#'
#' @return A data frame with the specified column renamed
#' @export
#'
#' @examples
#' \dontrun{
#' # Create a sample data frame
#' df <- data.frame(
#'   old_name = c(1, 2, 3),
#'   other_col = c("A", "B", "C")
#' )
#'
#' # Rename the 'old_name' column to 'new_name'
#' df_renamed <- rename_column(df, "old_name", "new_name")
#' }

#' @importFrom magrittr %>%
#' @importFrom rlang :=
rename_column <- function(df, current_column_name, new_column_name) {
    # Use dplyr::rename with !!sym for non-standard evaluation
    df <- df %>%
        dplyr::rename(!!new_column_name := !!rlang::sym(current_column_name))
    return(df)
}
