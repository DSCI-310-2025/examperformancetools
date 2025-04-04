# ---- Test plot_stg_vs_peg_scatter ----
test_that("plot_stg_vs_peg_scatter creates and saves a scatterplot", {
  dummy_data <- data.frame(
    STG = c(1, 2, 3),
    PEG = c(10, 9, 8),
    UNS = factor(c("Low", "Middle", "High"),
                 levels = c("very_low", "Low", "Middle", "High"),
                 ordered = TRUE)
  )

  temp_path <- tempfile(fileext = ".png")
  plot_obj <- plot_stg_vs_peg_scatter(dummy_data, temp_path)

  expect_s3_class(plot_obj, "gg")
  expect_true(file.exists(temp_path))
  file.remove(temp_path)
})
