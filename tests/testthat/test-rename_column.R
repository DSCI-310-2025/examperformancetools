# testing rename_column function
# Create a sample dataframe
df <- data.frame(
  old_name = c(1, 2, 3),
  other_col = c("A", "B", "C")
)

test_that("rename_column renames columns correctly", {
  # Apply the function
  df_renamed <- rename_column(df, "old_name", "new_name")

  # Check that the new column name exists
  expect_true("new_name" %in% colnames(df_renamed))

  # Check that the old column name no longer exists
  expect_false("old_name" %in% colnames(df_renamed))

  # Check that the data remains unchanged
  expect_equal(df_renamed$new_name, c(1, 2, 3))
  expect_equal(df_renamed$other_col, c("A", "B", "C"))
})
