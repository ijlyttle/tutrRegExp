# note: [mm:ss] refers to a timestamp in this video:
#   http://youtu.be/FCFdgymqpUI

# [05:23] Using R, "stringr" is a useful library
library(stringr)

# set the string and regular-expression pattern
chr_random <- "Aa1B3b2c#d$e*f/g } Aa1B + -G?" # [05:37]

# [06:45] using stringr, we don't compile regular expressions,
#   we simply define the pattern as a string
re_random <- "Aa1B" 

# [07:00] str_extract returns first occurance of match of pattern to string 
str_extract(chr_random, re_random)

# [07:30] str_locate returns the location of the match within the string
#   note that R counts a little bit differently from python
str_locate(chr_random, re_random)[,"start"]
str_locate(chr_random, re_random)[,"end"]
str_locate(chr_random, re_random)

# [08:30] foo_all returns all matches
str_extract_all(chr_random, re_random)
str_locate_all(chr_random, re_random)

# [09:21] split
str_split(chr_random, re_random)

# [09:39] replace
str_replace_all(chr_random, re_random, "Real Text")
