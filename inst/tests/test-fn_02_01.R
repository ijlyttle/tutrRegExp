context("intermediate fn_02_01")

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
