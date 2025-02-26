#' Data dictionary with old values and standardized values
#'
#' This data dictionary demonstrated how data dictionaries can be used to clean variable names in R
#' @name data_dictionary
#' @docType data
#' @format Dataframe with three columns and 10 rows
#' \describe{
#'   \item{old_name}{The original variable name before standadization and cleanup}
#'   \item{new_name}{The new standardized variable name}
#'   \item{description}{Description of the data in a given variable}
#' }
#' @examples
#' data(data_dictionary)
"data_dictionary"


#' A data set for patients with Non Communicable Diseases(NCDs)
#'
#' This is synthetic dataset for 365 patients with Non communicable diseases mainly hypertension and diabetes
#' @name ncd_data
#' @docType data
#' @format Dataframe with 10 columns and 365 rows
#' \describe{
#'   \item{patient_id}{Patient's unique identifier ranging from 1 to 365}
#'   \item{new_name}{Patient's age in years at the time of the study ranging from 18 to 85 years}
#'   \item{gender}{Patient's gender, which is male and females}
#'   \item{bmi}{Patient's Body Mass Index in kg/m2}
#'   \item{blood_pressure}{Patient's systolic blood pressure in mm/Hg}
#'   \item{cholestrol}{Patient's cholestrol levels in mg/dL}
#'   \item{glucose}{Patient's fasting glucose level in mg/dL}
#'   \item{hemoglobin}{Patient's hemoglobin level in g/dL}
#'   \item{heart_rate}{Patient's heart rate in beats per minute}
#'   \item{diagnosis}{Patient's health condition which can be Healthy, Pre-diabetic, Diabetic and Hypertension}
#' }
#' @examples
#' data(ncd_data)
"ncd_data"

