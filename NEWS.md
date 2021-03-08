# htmltab 0.8.1

## Minor changes

* Remove outdated references

# htmltab 0.8.0

## New features

* Added support for user-specified encoding (@UnkindPartition)

## Bug fixes

* Used versioned Wikipedia urls in vignette and tests
* Make S3method check_type exports compatible with R>=4

## Minor changes
* New repo and new maintainers
* Fixed some typos (@barclay-osborne)
* Changed NEWS to NEWS.md
* Moved to Github Actions

# htmltab 0.7.1

## Bug fixes

* Fixed failing vignette examples

# htmltab 0.7.0

## Major changes

* When htmltab encounters an inner table inside the target table, the inner table is flattened to allow table generation

## New features

* Added a new argument (`rm_nodata_cols`) to remove columns that have no apparent data value

## Bug fixes

* Single column data frames are not reduced to vectors anymore which used to result in an error
* When the last column had misspecified column spans, htmltab previously discarded an entire column. Now, a check is in place that makes a judgment whether a column should be kept or not
* Fixed a problem with reading html files from the local file system (@earino)
* Fixed failing tests

# htmltab 0.6.0

## New features

* Added capability to process header information that appear in-table. This is done via a new formula interface to the header argument
* Added new parameter (rm_whitespace) to remove leading and trailing whitespace from cell values
* Added new parameter (rm_identical_cols) to remove columns that are falsely copied when colspan attributes are misused
* Tables are now checked for and cleaned from various types of malformation

## Bug fixes

* Fixed a bug that prevented correct creation of multi-row header when a header cell was completely whitespace
* Fixed a bug where rm_empty_cols did not work properly because of values that were created through column expansion
* Removed unreliable test for documentation examples
* Automatic check for nested tables. htmltab throws an error when the designated table includes a table

## Minor changes
* In the header construction, multi-row headers are now correctly ignoring empty values in the final header
* Complementarity checks of header and body rows are now based on a different (and more robust) methodology

# htmltab 0.5.0

## Major changes

* Revised code for header and body identification. When an XPath is passed to either of the two, it must treat the parent table node as the root. This change is backward incompatible

## New features

* Header and body are now treated as complementary elements of a table, i.e. passing (numeric) information about the position of either of the two will be used for the identification of the other
* Added a new argument (`fillNA`) to replace non-data cells cells by NA
* Added a new argument (`rm_nodata_cols`) to remove columns that have no apparent data value
* Added a new argument (`rm_invisible`) to remove invisible nodes from the table node

## Bug fixes

* Fixed a problem where htmltab failed when a table didn't nest a row within tr tags. Now every table is controlled, and tr tags are added when necessary
* Fixed a small problem with misspecified spans in the table header
* Added meaningful error message when table couldn't be identified
* Fixed problem where a header warning was thrown even when `colNames` was supplied
