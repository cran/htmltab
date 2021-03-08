context("Input checks")

test_that("Prompts errors correctly", {
  expect_error(check_type(doc = "http://http://cran.at.r-project.org/", which = factor(4)))
})

test_that("check_type produces class output", {

  skip_if_offline(host = "wikipedia.org")
  skip_on_cran()
  
  url <- "https://en.wikipedia.org/w/index.php?title=2014_Indian_general_election&oldid=1007662542"
  
  x <- check_type(doc = url, which = "//table[5]")
  expect_that(x, is_a("XMLInternalDocument"))

  #expect_error(check_type(doc = url, which = 1))

  con <- url(url)
  parsed <- suppressWarnings(XML::htmlParse(readLines(con)))
  z <- check_type(doc = parsed, which = 3)
  expect_that(z, is_a("XMLInternalDocument"))
})
