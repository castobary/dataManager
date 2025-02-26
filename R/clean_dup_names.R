#' @title Clean Duplicate Column Names
#'
#' @description
#' This function ensures column names are unique by appending numeric suffixes to duplicate names.
#'
#' @param col.names A character vector of column names that may contain duplicates.
#' @return A character vector with duplicate column names modified to be unique by appending a numeric suffix.
#' @examples
#' # Example usage
#' col.names <- c("Sex", "Age", "Sex", "Sex", "Age")
#' clean_dup_names(col.names)
#' # Returns: c("Sex","Age","Sex1","Sex2","Age3")
#'
#' @export
clean_dup_names <-
function(col.names){
  new.names <- c()
  count <- 1

  # loop through all new column names
  for(i in 1:length(col.names)){
    var <- col.names[i]
    # check if a column name already exists if does add a number as suffix
    if(var %in% new.names){
      new.names[i] <- paste(var, count,sep='')
      count <- count + 1
    }else{
      new.names[i] <- var
    }
  }
  return(new.names)
}
