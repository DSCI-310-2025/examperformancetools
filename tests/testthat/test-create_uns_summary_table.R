# ---- Test create_uns_summary_table ----
test_that("create_uns_summary_table computes correct stats and saves to CSV", {
  dummy_data <- data.frame(
    STG = c(1, 2, 3, 4, 5, 6, 7, 8),
    PEG = c(10, 9, 8, 7, 6, 5, 4, 3),
    UNS = factor(
      c("Low", "Low", "Middle", "Middle", "High", "High", "very_low", "very_low"),
      levels = c("very_low", "Low", "Middle", "High"),
      ordered = TRUE
    )
  )

  temp_path <- tempfile(fileext = ".csv")
  result <- create_uns_summary_table(dummy_data, temp_path)

  expect_s3_class(result, "data.frame")
  expect_equal(nrow(result), 4)
  expect_equal(names(result),
               c("UNS", "count", "mean_STG", "mean_PEG", "max_STG", "max_PEG", "min_STG", "min_PEG"))
  expect_true(file.exists(temp_path))
  read_data <- readr::read_csv(temp_path, show_col_types = FALSE)
  expect_equal(nrow(read_data), 4)

  file.remove(temp_path)
})
