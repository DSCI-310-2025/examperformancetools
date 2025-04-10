
<!-- README.md is generated from README.Rmd. Please edit that file -->

# examperformancetools

<!-- badges: start -->

[![R-CMD-check](https://github.com/DSCI-310-2025/examperformancetools/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/DSCI-310-2025/examperformancetools/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/DSCI-310-2025/examperformancetools/graph/badge.svg)](https://app.codecov.io/gh/DSCI-310-2025/examperformancetools)
<!-- badges: end -->

The goal of examperformancetools is to …

## Installation

You can install the development version of examperformancetools like so:

``` r
devtools::install_github("DSCI-310-2025/examperformancetools")
```



# examperformancetools 📊

`examperformancetools` is an R package that provides simple, reusable functions for cleaning, summarizing, and visualizing data from the **UCI Student Knowledge Modeling Dataset**. It's designed to streamline the data processing workflow for student performance classification and modeling.

## 📦 What's Inside

This package includes functions for:
- Cleaning and preparing training/testing data (`create_train_data`, `create_test_data`)
- Renaming columns dynamically (`rename_column`)
- Summarizing user scores (`create_summary_table`, `create_uns_summary_table`)
- Creating percentage breakdowns (`create_percentage_table`)
- Generating scatter plots between predictors (`plot_stg_vs_peg_scatter`)

## 🎯 Why Use This Package?

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
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.




