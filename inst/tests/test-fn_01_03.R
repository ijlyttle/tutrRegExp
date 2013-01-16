context("introduction fn_01_03")

# Modify the function fn_01_03 such that it returns a string describing a
# regular expression that matches:
#
#   the words "the" and "The" 
#
test_that("we match the words 'the' and 'The'", {
  expect_that(str_count(gettysburg, fn_01_03()), equals(c(1, 0, 10)))
  expect_that(str_count(independence_intro, fn_01_03()), equals(9))
})