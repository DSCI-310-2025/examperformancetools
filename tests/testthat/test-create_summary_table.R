# Create a temporary file path for testing
temp_file <- tempfile(fileext = ".csv")

# Create a test data frame with more than 6 rows
test_data <- data.frame(
  STG = 1:10,
  PEG = 11:20,
  UNS = factor(rep(c("very_low", "Low"), 5),
               levels = c("very_low", "Low", "Middle", "High"),
               ordered = TRUE
  )
)

test_that("create_summary_table creates a CSV with the first 6 rows", {
  temp_file <- tempfile(fileext = ".csv")
  # Call the function
  result <- create_summary_table(test_data, temp_file)

  # Check that the result has 6 rows and the file exists
  expect_equal(nrow(result), 6)
  expect_true(file.exists(temp_file))

  # Read the file back and check its content
  read_data <- readr::read_csv(temp_file, show_col_types = FALSE)
  expect_equal(nrow(read_data), 6)
  expect_equal(read_data$STG, 1:6)
  
  file.remove(temp_file)
})

# Test: input is not a data frame
test_that("create_summary_table throws error if input is not a data frame", {
  expect_error(create_summary_table(list(a = 1:5), temp_file))
})

# Test: input is an empty data frame
test_that("create_summary_table warns when input data is empty", {
  temp_file <- tempfile(fileext = ".csv")
  empty_df <- data.frame()
  expect_warning(create_summary_table(empty_df, temp_file))
  file.remove(temp_file)
})

# Test: output file does not end with .csv
test_that("create_summary_table warns if output path does not end with .csv", {
  temp_file <- tempfile(fileext = "")  # no extension
  expect_warning(create_summary_table(test_data, temp_file))
  file.remove(temp_file)
})
