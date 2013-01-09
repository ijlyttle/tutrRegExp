context("intermediate fn_02_02")

# Modify the function fn_02_02 such that it returns a string describing a
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