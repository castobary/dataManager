#' @title Remove Digits and Clean Text Strings
#'
#' @description
#' This function removes trailing numbers and underscores from text strings,
#' replaces underscores and hyphens with spaces, and converts the string to title case.
#'
#' @param text_string A character vector containing text strings to be cleaned.
#' @return A character vector with cleaned text.
#' @examples
#' remove_digits("consultation_3")   # Returns "Consultation"
#' remove_digits("intake_1")         # Returns "Intake"
#' remove_digits("follow-up_2")      # Returns "Follow Up"
#' remove_digits("check-in-4")       # Returns "Check In"
#' @import stringr
#' @export

remove_digits <-
function(text_string) {
  clean_string <- stringr::str_replace_all(text_string, "_\\d+", "") # Remove numbers and underscores
  clean_string <- stringr::str_replace_all(clean_string, "_", " ")   # Replace underscores with spaces
  clean_string <- stringr::str_replace_all(clean_string, "-", " ")   # Replace hyphens with spaces
  clean_string <- stringr::str_to_title(clean_string)               # Convert to title case
  return(clean_string)
}
