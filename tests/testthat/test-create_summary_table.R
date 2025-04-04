# Create a temporary file path for testing
temp_file <- tempfile(fileext = ".csv")

test_that("create_summary_table creates a CSV with the first 6 rows", {
  # Create a test data frame with more than 6 rows
  test_data <- data.frame(
    STG = 1:10,
    PEG = 11:20,
    UNS = factor(rep(c("very_low", "Low"), 5),
      levels = c("very_low", "Low", "Middle", "High"),
      ordered = TRUE
    )
  )

  # Call the function
  result <- create_summary_table(test_data, temp_file)

  # Check that the result has 6 rows and the file exists
  expect_equal(nrow(result), 6)
  expect_true(file.exists(temp_file))

  # Read the file back and check its content
  read_data <- readr::read_csv(temp_file, show_col_types = FALSE)
  expect_equal(nrow(read_data), 6)
  expect_equal(read_data$STG, 1:6)
})

# Clean up the temporary file after tests
file.remove(temp_file)
