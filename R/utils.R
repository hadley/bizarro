str_reverse <- function(x) {
  pieces <- strsplit(x, "")
  vapply(pieces, function(x) paste(rev(x), collapse = ""), character(1))
}
