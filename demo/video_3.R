library(stringr)

# set the string and regular-expression pattern
chr_random <- "Aa1B3b2c#d$e*f/g } Aa1B + -G?" # [00:13]

# [01:20] use ignore.case() to modify pattern
re_random <- ignore.case("b3b2c") 

# [01:55] not sure why if-else is necessary
chr_print <- ifelse(
  str_detect(chr_random, re_random), 
  str_extract(chr_random, re_random),
  "Nothing Found"
)
chr_print

# instead, let's make a function, just because we can
fn_detect <- function(string="", pattern=""){
  ifelse(
    str_detect(string, pattern), 
    str_extract(string, pattern),
    "Nothing Found"
  )  
}

# use the function
fn_detect(chr_random, re_random)

# [02:40] next example
fn_detect(chr_random, ignore.case(".*"))

# [02:54] get all the letters
matches <- str_extract_all(chr_random, ignore.case("[a-z]"))

# [3:30] collapse into a single string
str_c(matches[[1]], collapse="")

# str_join is an identical function to str_c
str_join(matches[[1]], collapse="")

# [03:45] R requires the use of double backslashes to escape within regular expressions
str_join(
  str_extract_all(chr_random, ignore.case("[#$\\*\\/?0-9]"))[[1]], 
  collapse=""
)

# [04:15]
str_join(
  str_extract_all(chr_random, ignore.case("\\d\\D\\s\\S.\\W\\w"))[[1]], 
  collapse=""
)

# [05:00]
vec_names <- c(
  "Jennifer Clark",
  "Paul Brown",
  "Jenny Fromdablok",
  "Kelly Simpson",
  "Jen Simpson",
  "Mark Jacobs"
)

names <- str_join(vec_names, collapse=" ")

# [05:30] not going to worry about formatting...
#
# By the way, this is how I like to comment regular expressions.
# Comments are cheap.
#
# Je                    string "Je"
# [nnifer|nny|n]{1,6}   1-6 char. (any order) among "nnifer" or "nny" or "n"
# \\s                   space
# \\w+                  one or more alphabet characters
# \\s                   space
#
str_extract_all(names, ignore.case("(Je[nnifer|nny|n]{1,6}\\s\\w+\\s)"))

# what this ([nifery]{1,6}) regular expression does is look for one to six
#   characters, in no particular order, drawn from the set "nifery".
#
# note that in the previous example ([nnifer|nny|n]{1,6}), order is not
#   important there, either. This is a common "gotcha"
#
# Je                    string "Je"
# [nifery]{1,6}         1-6 char. (any order) among "nifery"
# \\s                   space
# \\w+                  one or more alphabet characters
# \\s                   space
#
str_extract_all(names, ignore.case("(Je[nifery]{1,6}\\s\\w+\\s)"))

# [06:50]
vec_chr_pi <- c(
  "PI is a mathematical constant whose value is the ratio of any",
  "circle's circumference to its diameter ie's circumference.",
  "It is the same as the ratio of a cirle's area the square of its radius.",
  "An approximation to its value is 3.14159265359.",
  "For questions, call me at 222-555-3142, 2225553142, or (222)555-3142."
)

chr_pi <- str_join(vec_chr_pi, collapse=" ")

# [07:10]
# 
# group 1:
#   \\d       digit
#   \\.       decimal point ()
#   \\d*      zero or more digits
str_extract(chr_pi, ignore.case("(\\d\\.\\d*)"))

# [08:00] I think this is a more-robust regular expression
#
# \\(?      optional opening parenthesis
# [0-9]{3}  three digits
# \\)?      optional closing parenthesis
# [- ]?     optional (dash or space)
# [0-9]{3}  three digits
# [- ]?     optional (dash or space)
# [0-9]{4}  four digits
#
re_phone <- "\\(?[0-9]{3}\\)?[- ]?[0-9]{3}[- ]?[0-9]{4}"

str_extract_all(chr_pi, re_phone)

