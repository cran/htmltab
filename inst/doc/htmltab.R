## ----message=FALSE------------------------------------------------------------
library(htmltab)

url <- "https://en.wikipedia.org/w/index.php?title=Languages_of_the_United_Kingdom&oldid=1005083039"
ukLang <- htmltab(doc = url, which = "//th[text() = 'Ability\n']/ancestor::table")
head(ukLang)

## ----message=FALSE------------------------------------------------------------
library(tidyr)

ukLang <- gather(ukLang, key, value, -Ability)

## -----------------------------------------------------------------------------
ukLang <- separate(ukLang, key, into = c("region", "language", "statistic"), sep = " >> ")
head(ukLang)

## -----------------------------------------------------------------------------
url <- "https://en.wikipedia.org/w/index.php?title=2002_New_Zealand_general_election&oldid=1008475471"
xp <- "//caption[starts-with(text(), 'Electorate results')]/ancestor::table"
body_xp <- "//tr[./td[not(@colspan = '8')]]"

nz1 <- htmltab(doc = url, which = xp, body = body_xp, encoding = "UTF-8")
head(nz1)

## -----------------------------------------------------------------------------
nz2 <- htmltab(doc = url, which = xp, header = 1 + "//tr/td[@colspan = '8']",
               body = "//tr[./td[not(@colspan = '10')]]", encoding = "UTF-8")

## -----------------------------------------------------------------------------
tail(nz2, 9)

