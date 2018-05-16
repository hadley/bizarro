#' @examples
#' bizarro(c("abc", "def"))
#' bizarro(1:10)
#' bizarro(c(TRUE, FALSE, TRUE))
#'
#' bizarro(mtcars)
bizarro <- function(x) {
  UseMethod("bizarro")
}

bizarro.character <- function(x) {
  str_reverse(x)
}
