
<!-- README.md is generated from README.Rmd. Please edit that file -->

# examperformancetools

<!-- badges: start -->

[![R-CMD-check](https://github.com/DSCI-310-2025/examperformancetools/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/DSCI-310-2025/examperformancetools/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/DSCI-310-2025/examperformancetools/graph/badge.svg)](https://app.codecov.io/gh/DSCI-310-2025/examperformancetools)
<!-- badges: end -->

`examperformancetools` is an R package that provides simple, reusable functions for cleaning, summarizing, and visualizing data from the **UCI Student Knowledge Modeling Dataset**. It's designed to streamline the data processing workflow for student performance classification and modeling.

## Installation

You can install the development version of examperformancetools like so:

``` r
devtools::install_github("DSCI-310-2025/examperformancetools")
```

##  What's Inside

This package includes functions for:
- Cleaning and preparing training/testing data (`create_train_data`, `create_test_data`)
- Renaming columns dynamically (`rename_column`)
- Summarizing user scores (`create_summary_table`, `create_uns_summary_table`)
- Creating percentage breakdowns (`create_percentage_table`)
- Generating scatter plots between predictors (`plot_stg_vs_peg_scatter`)

##  Why Use This Package?

There are existing packages in R such as:
- `dplyr`, `tidyr` – general-purpose data wrangling
- `skimr`, `summarytools` – for summary stats
- `ggplot2` – for flexible visualizations

However, `examperformancetools` is designed specifically for:
- Student modeling and classification workflows
- Custom summary tables and educational indicators
- Fast integration with academic datasets like the **UCI Data User Modeling Dataset**

It simplifies repetitive tasks into single-line commands with clean, tested outputs, and is ideal for teaching, assignments, or prototyping in education-related data science.

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(examperformancetools)
```

Here’s a demo section that introduces and demonstrates the usage of the `rename_column()` and `create_summary_table()` functions clearly and visually:

---

### Rename columns with `rename_column()`

This function renames a column in a data frame from its old name to a new one, using tidy evaluation.

```
# Create a sample data frame
df <- data.frame(
  old_name = c(1, 2, 3, 4, 5, 6),
  other_col = c("A", "B", "C", "D", "E", "F")
)

# Rename 'old_name' to 'new_name'
df_renamed <- rename_column(df, "old_name", "new_name")
```

The function takes the current column name and the new column name as strings.

---

### Create summary tables with `create_summary_table()`

This function saves the first six rows of a data frame to a CSV file, ideal for quick inspection of  data.
```
# Save the first 6 rows of the dataset to a CSV file
create_summary_table(df_renamed, "results/table1.csv")
```

It returns the top of the data frame invisibly and writes it to the specified path.






