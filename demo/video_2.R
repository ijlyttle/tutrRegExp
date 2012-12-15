library(stringr)

# set the string and regular-expression pattern
chr_random <- "Aa1B3b2c#d$e*f/g } Aa1B + -G?"
re_random <- "Aa1B"

# first match
str_extract(chr_random, re_random)
str_locate(chr_random, re_random)[,"start"]
str_locate(chr_random, re_random)[,"end"]
str_locate(chr_random, re_random)

# all matches
str_extract_all(chr_random, re_random)
str_locate_all(chr_random, re_random)

# split
str_split(chr_random, re_random)

# replace
str_replace_all(chr_random, re_random, "Real Text")
