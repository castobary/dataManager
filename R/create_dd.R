create_dd <-
function(.data, old_name="old_name", new_name="new_name"){
  with(.data, {
    names(new_name) <- old_name
    new_name
  })
}
