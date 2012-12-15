library(stringr)

# set the string and regular-expression pattern
chr_random <- "Aa1B3b2c#d$e*f/g } Aa1B + -G?"
re_random <- ignore.case("b3b2c")

chr_print <- ifelse(
  str_detect(chr_random, re_random), 
  str_extract(chr_random, re_random),
  "Nothing Found"
)
chr_print

# let's make a function, just because we can
fn_detect <- function(string="", pattern=""){
  ifelse(
    str_detect(string, pattern), 
    str_extract(string, pattern),
    "Nothing Found"
  )  
}

# use the function
fn_detect(chr_random, re_random)

# next example
fn_detect(chr_random, ignore.case(".*"))

# get all the letters
matches <- str_extract_all(chr_random, ignore.case("[a-z]"))

# collapse into a single string
str_c(matches[[1]], collapse="")

# str_join is an identical function to str_c
str_join(matches[[1]], collapse="")

# R requires the use of double backslashes to escape within regular expressions
str_join(
  str_extract_all(chr_random, ignore.case("[#$\\*\\/?0-9]"))[[1]], 
  collapse=""
)

str_join(
  str_extract_all(chr_random, ignore.case("\\d\\D\\s\\S.\\W\\w"))[[1]], 
  collapse=""
)


vec_names <- c(
  "Jennifer Clark",
  "Paul Brown",
  "Jenny Fromdablok",
  "Kelly Simpson",
  "Jen Simpson",
  "Mark Jacobs"
)

names <- str_join(vec_names, collapse=" ")

# not going to worry about formatting...
str_extract_all(names, ignore.case("(Je[nnifer|nny|n]{1,6}\\s\\w+\\s)"))

str_extract_all(names, ignore.case("(Je[nifery]{1,6}\\s\\w+\\s)"))

vec_chr_pi <- c(
  "PI is a mathematical constant whose value is the ratio of any",
  "circle's circumference to its diameter ie's circumference.",
  "It is the same as the ratio of a cirle's area the square of its radius.",
  "An approximation to its value is 3.14159265.",
  "For questions, call me at 222-555-3142, 2225553142, or (222)555-3142."
)

chr_pi <- str_join(vec_chr_pi, collapse=" ")

str_extract(chr_pi, ignore.case("(\\d.\\d*)"))

#
re_phone <- "\\(?[0-9]{3}\\)?[- ]?[0-9]{3}[- ]?[0-9]{4}"

str_extract_all(chr_pi, re_phone)

