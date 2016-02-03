install.packages("roxygen2")
install.packages("devtools")
install.packages("testthat")
install.packages("knitr")

devtools::has_devel()

#' Hello
#' 
#' Imprime Hello word
#' 
#' @param  i é o parametro que não serve pra nada
#' 
#' 
#'  @export
#'  
hello < function(i) {
print("Hello, world!")
}