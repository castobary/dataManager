#' @title Create a Named Vector for Data Dictionary Mapping
#'
#' @description
#' This function generates a named vector that maps old variable names to new names.
#'
#' @param .data A data frame containing the columns specified in `old_name` and `new_name`.
#' @param old_name A character string specifying the column name in `.data` that contains the old variable names. Default is `"old_name"`.
#' @param new_name A character string specifying the column name in `.data` that contains the new variable names. Default is `"new_name"`.
#' @return A named character vector where the old names are the names and the new names are the values.
#'
#' @examples
#' dd <- data.frame(old_name = c("Patient ID", "Patient's Age", "Patient Sex"), new_name = c("ID", "age", "sex"))
#' create_dd(dd, "old_name", "new_name")
#' # Named vector: c(Patient ID = "ID", B = "age", C = "sex")
#' @export

create_dd <- function(.data, old_name="old_name", new_name="new_name"){
  if(!is.character(.data$old_name) | !is.character(.data$new_name)){
    stop("Values to create a data dictionary must be character vectors.")
  }
  with(.data, {
    names(new_name) <- old_name
    new_name
  })
}
