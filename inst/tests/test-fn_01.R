context("introduction")

test_that("we match the sequence 'the'", {
  expect_that(str_count(gettysburg[1], fn_01_01()), equals(2))
  expect_that(str_count(independence_intro, fn_01_01()), equals(14))
})

test_that("we match the word 'the'", {
  expect_that(str_count(gettysburg[1], fn_01_02()), equals(1))
  expect_that(str_count(independence_intro, fn_01_02()), equals(9))
})
