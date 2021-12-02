#' Add HTML Colour to Text
#'
#' Adds `<span style="color: colour">x</span>` flags to add colour in html and
#' markdown formatting.
#'
#' @param x String to add flags around.
#' @param colour CSS colouring to be added.
#'
#' @return String.
#' @export
#'
#' @examples
col_text <- function(x, colour = "red") {
  htmltools::span(
    x,
    style = stringr::str_glue("color: {colour}")
  )
}
