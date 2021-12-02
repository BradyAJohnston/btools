#' Highlight Difference Between Two Strings
#'
#' Finds and highlights with html colour tags, the difference between two
#' strings.
#'
#' @param original String to be compared against.
#' @param different New string that will be returned and higlighted.
#' @param colour Colour that differences will be highlighted with.
#' @param split Logical, whether to returne a vector of individual characters or
#'   a collapsed single string.
#'
#' @return String vecctor.
#' @export
#'
#' @examples
#' orig <- "AAACUCAGUU"
#' mut <- "AAACUUAGUU"
#' highlight_diff(orig, mut)
highlight_diff <- function(original, different, colour = "red", split = FALSE) {
  split_orig <- original %>%
    stringr::str_split("") %>%
    unlist()

  split_diff <- different %>%
    stringr::str_split("") %>%
    unlist()

  is_same <- split_orig == split_diff

  sapply(seq_along(is_same), function(x) {
    if (is_same[x]) {
      split_diff[x]
    } else {
      stringr::str_glue("<p style='colour:{colour}'>{split_diff[x]}</p>")
    }
  }) %>%
    paste(collapse = "")
}

