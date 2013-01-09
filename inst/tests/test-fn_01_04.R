context("introduction fn_01_04")

# Modify the function fn_01_04 such that it returns a string describing a
# regular expression that matches:
#
#   five-letter words
#
test_that("we match five-letter words", {
  expect_that(str_count(gettysburg, fn_01_04()), equals(c(5, 11, 19)))
  expect_that(str_count(independence_intro, fn_01_04()), equals(9))
})