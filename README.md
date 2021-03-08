
<!-- README.md is generated from README.Rmd. Please edit that file -->

# htmltab: Hassle-free HTML tables in R

<!-- badges: start -->

[![R-CMD-check](https://github.com/htmltab/htmltab/workflows/R-CMD-check/badge.svg)](https://github.com/htmltab/htmltab/actions)
[![Project Status: Unsupported – The project has reached a stable,
usable state but the author(s) have ceased all work on it. A new
maintainer may be
desired.](https://www.repostatus.org/badges/latest/unsupported.svg)](https://www.repostatus.org/#unsupported)
<!-- badges: end -->

HTML tables are a valuable data source but extracting and recasting
these data into a useful format can be tedious. htmltab is a package for
extracting structured information from HTML tables. It is similar to
`readHTMLTable()` of the XML package but provides two major advantages:

1.  First, the function automatically expands row and column spans in
    the header and body cells.
2.  Second, users are given more control over the identification of
    header and body rows which will end up in the R table.

Additionally, the function preprocesses table code, removes unneeded
parts and so helps to alleviate the need for tedious post-processing.

## Installation

You can install the released version of htmltab from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("htmltab")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("htmltab/htmltab")
```

## Usage

To see *htmltab* in action, take a look at the case studies in this
[blog
post](http://www.r-datacollection.com/blog/htmltab-Next-version-and-CRAN-release/),
the package vignette, or the package manual.
