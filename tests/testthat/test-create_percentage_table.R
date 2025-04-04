# Create a temporary file path for testing
temp_file <- tempfile(fileext = ".csv")

test_that("create_percentage_table calculates correct percentages", {
  # Create a test data frame with known distribution
  test_data <- data.frame(
    STG = 1:10,
    PEG = 11:20,
    UNS = factor(c(rep("very_low", 4), rep("Low", 3), rep("Middle", 2), "High"),
      levels = c("very_low", "Low", "Middle", "High"),
      ordered = TRUE
    )
  )

  # Call the function
  result <- create_percentage_table(test_data, temp_file)

  # Check that the result has the correct structure
  expect_equal(names(result), c("UNS", "count", "percentage"))
  expect_equal(nrow(result), 4) # One row for each UNS level

  # Check the counts, percentages, and file existence
  expect_equal(result$count, c(4, 3, 2, 1))
  expect_equal(result$percentage, c(40, 30, 20, 10))
  expect_true(file.exists(temp_file))

  # Read the file back and check its content
  read_data <- readr::read_csv(temp_file, show_col_types = FALSE)
  expect_equal(nrow(read_data), 4)
  expect_equal(read_data$count, c(4, 3, 2, 1))
  expect_equal(read_data$percentage, c(40, 30, 20, 10))
})

# Clean up the temporary file after tests
file.remove(temp_file)

