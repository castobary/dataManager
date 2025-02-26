create_dd <-
function(.data, old_name="old_name", new_name="new_name"){
  if(!is.character(.data$old_name) | !is.character(.data$new_name)){
    stop("Values to create a data dictionary must be character vectors.")
  }
  with(.data, {
    names(new_name) <- old_name
    new_name
  })
}
