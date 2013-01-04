require(stringr)

#' fn_02_01
#'
#' The user will modify the function to return a value according to the
#' specification.
#'
#' @return  a regular expression that matches US phone numbers
#' 
fn_02_01 <- function(){
  
  # modify this regular expression so it matches all five phone numbers
  #
  # \\(?      optional opening parenthesis
  # [0-9]{3}  three digits
  # \\)?      optional closing parenthesis
  # [- ]?     optional (dash or space)
  # [0-9]{3}  three digits
  # [- ]?     optional (dash or space)
  # [0-9]{4}  four digits
  #
  result <- "\\(?[0-9]{3}\\)?[- ]?[0-9]{3}[- ]?[0-9]{4}"
  
  return(result)
}

fn_02_02 <- function(){
  
  # modify this regular expression so it matches all five phone numbers
  # and puts into groups: 
  #   1-area code
  #   2-exchange (3 digits)
  #   3-rest of number(4 digits)
  #
  #
  # \\(?          optional opening parenthesis
  # group 1
  #   ([0-9]{3})  three digits
  # \\)?          optional closing parenthesis
  # [- ]?         optional (dash or space)
  # [0-9]{3}      three digits
  # [- ]?         optional (dash or space)
  # [0-9]{4}      four digits
  #
  result <- "\\(?[0-9]{3}\\)?[- ]?[0-9]{3}[- ]?[0-9]{4}"
  
  return(result)
}

fn_02_03 <- function(string_input){
  
  # modify this regular expression so it matches all five phone numbers
  # and puts into groups: (recycle from previous problem)
  #   1-area code
  #   2-exchange (3 digits)
  #   3-rest of number(4 digits)
  #
  #
  # \\(?          optional opening parenthesis
  # group 1
  #   ([0-9]{3})  three digits
  # \\)?          optional closing parenthesis
  # [- ]?         optional (dash or space)
  # [0-9]{3}      three digits
  # [- ]?         optional (dash or space)
  # [0-9]{4}      four digits
  #
  re_phone_modified <- "\\(?[0-9]{3}\\)?[- ]?[0-9]{3}[- ]?[0-9]{4}"
  
  # design a replacement string
  replacement_string <- "+1 (\\1) \\2-\\3"
  
  result <- str_replace_all(string_input, re_phone_modified, replacement_string)
  
  return(result)
}


