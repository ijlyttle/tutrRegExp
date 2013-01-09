context("introduction fn_01_01")

# For this sequence, you must modify the functions in the file "fn_01.R" such that
# they each return a regular expression that meets the specifation of its tests. 

# Modify the function fn_01_01 such that it returns a string describing a
# regular expression that matches:
#
#   the sequence of characters "the"
#
test_that("we match the sequence 'the'", {
  expect_that(str_count(gettysburg, fn_01_01()), equals(c(2, 3, 15)))
  expect_that(str_count(independence_intro, fn_01_01()), equals(14))
})
