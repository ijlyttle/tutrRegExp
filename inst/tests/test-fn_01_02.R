context("introduction fn_01_02")

# Modify the function fn_01_02 such that it returns a string describing a
# regular expression that matches:
#
#   the word "the"
#
# Hint: words have boundaries
#
test_that("we match the word 'the'", {
  expect_that(str_count(gettysburg, fn_01_02()), equals(c(1, 0, 8)))
  expect_that(str_count(independence_intro, fn_01_02()), equals(9))
})