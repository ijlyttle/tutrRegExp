context("introduction")

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


# Modify the function fn_01_03 such that it returns a string describing a
# regular expression that matches:
#
#   the words "the" and "The" 
#
test_that("we match the words 'the' and 'The'", {
  expect_that(str_count(gettysburg, fn_01_03()), equals(c(1, 0, 10)))
  expect_that(str_count(independence_intro, fn_01_03()), equals(9))
})

# Modify the function fn_01_04 such that it returns a string describing a
# regular expression that matches:
#
#   five-letter words
#
test_that("we match the words 'the' and 'The'", {
  expect_that(str_count(gettysburg, fn_01_04()), equals(c(5, 11, 19)))
  expect_that(str_count(independence_intro, fn_01_04()), equals(9))
})
