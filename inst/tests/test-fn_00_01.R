context("logistics fn_00_01")

# For this sequence, you must modify the functions in the file "fn_00.R" such that
# they each return a regular expression that meets the specifation of its tests. 

# Modify the function fn_00_01 such that it returns a string describing a
# regular expression that matches:
#
#   the sequence of characters "hat"
#
test_that("we match the sequence 'hat'", {
  expect_that(str_count('I like that hat', fn_00_01()), equals(2))
  expect_that(str_count('cat in the hat', fn_00_01()), equals(1))
  expect_that(str_count('just a cat', fn_00_01()), equals(0))
})
