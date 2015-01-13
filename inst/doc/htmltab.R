## ----message=FALSE-------------------------------------------------------
library(htmltab)

url <- "http://en.wikipedia.org/wiki/Demography_of_the_United_Kingdom"
ukLang <- htmltab(doc = url, which = "//th[text() = 'Ability']/ancestor::table")
head(ukLang)

## ----message=FALSE-------------------------------------------------------
library(tidyr)
library(magrittr)

ukLang %<>% gather(key, value, -Ability)

## ------------------------------------------------------------------------
ukLang %>% separate(key, into = c("region", "language", "statistic"), sep = " >> ") %>% head

## ------------------------------------------------------------------------
url <- "http://en.wikipedia.org/wiki/New_Zealand_general_election,_2002"
xp <- "//caption[starts-with(text(), 'Electorate results')]/ancestor::table"

nz1 <- htmltab(doc = url, which = xp, body = "//tr[./td[not(@colspan = '10')]]")
head(nz1)

