context("intermediate fn_02_03")

# Modify the function fn_02_03 such that it returns a vector of strings where
# phone numbers are formatted:
#
#   +1 (xxx) xxx-xxxx
#
test_that("we modify the phone numbers to conform to the correct format", {
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


