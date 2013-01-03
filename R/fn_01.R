require(stringr)

#' fn_01_01
#'
#' The user will modify the function to return a value according to the
#' specification.
#'
#' @return  a regular expression that matches the sequence of characters "the"
#' 
fn_01_01 <- function(){

  result <- "the"
  
  return(result)
}

#' fn_01_02
#'
#' The user will modify the function to return a value according to the
#' specification.
#'
#' @return  a regular expression that matches the word "the".
#' 
fn_01_02 <- function(){
  
  result <- "\\bthe\\b"
  
  return(result)
}

#' fn_01_03
#'
#' The user will modify the function to return a value according to the
#' specification.
#'
#' @return  a regular expression that matches the words "the" and "The".
#' 
fn_01_03 <- function(){
  
  result <- "\\b[Tt]he\\b"
  
  return(result)
}

#' fn_01_04
#'
#' The user will modify the function to return a value according to the
#' specification.
#'
#' @return  a regular expression that matches five-letter words.
#' 
fn_01_04 <- function(){
  
  result <- "\\b\\w{5}\\b"
  
  return(result)
}


