context("intermediate")

# For this sequence, you must modify the functions in the file "fn_01.R" such that
# they each return a regular expression that meets the specifation of its tests. 

# Modify the function fn_02_01 such that it returns a string describing a
# regular expression that matches:
#
#   US phone numbers
#
test_that("we match US phone numbers", {
  expect_that(str_extract_all(ia_house, fn_02_01()), 
              equals(list(character(0), "(563) 323-5988", "319 364-2288", 
                          "(515)-282-1909", "641-782-2495", "712.224.4693")
              )
  )
})

# Modify the function fn_02_01 such that it returns a string describing a
# regular expression that matches:
#
#   US phone numbers
#
# with groups:
#
#  area code
#  exchange
#  last four numbers
#
#
test_that("we match US phone numbers, with area code extracted as a group", {
  expect_that(str_match_all(str_join(ia_house, collapse=" "), fn_02_02())[[1]][,2], 
              equals(c("563", "319", "515", "641", "712")
              )
  )
})

test_that("we match US phone numbers, with exchange extracted as a group", {
  expect_that(str_match_all(str_join(ia_house, collapse=" "), fn_02_02())[[1]][,3], 
              equals(c("323", "364", "282", "782", "224")
              )
  )
})

test_that("we match US phone numbers, with last four extracted as a group", {
  expect_that(str_match_all(str_join(ia_house, collapse=" "), fn_02_02())[[1]][,4], 
              equals(c("5988", "2288", "1909", "2495", "4693")
              )
  )
})

# Modify the function fn_02_02 such that it returns a vector of strings where
# phone numbers are formatted:
#
#   +1 (xxx) xxx-xxxx
#
test_that("we match US phone numbers, with last four extracted as a group", {
  expect_that(fn_02_03(ia_house), 
              equals(c("List of district-office phone-numbers for US House Iowa delegation", 
                       "Bruce Braley +1 (563) 323-5988",
                       "Dave Loebsack +1 (319) 364-2288",
                       "Leonard Boswell +1 (515) 282-1909",
                       "Tom Latham +1 (641) 782-2495",
                       "Steve King +1 (712) 224-4693")
              )
  )
})


