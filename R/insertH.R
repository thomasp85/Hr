insertHAddin <- function() {
  uppercaseh <- get_upper_case_h()
  rstudioapi::insertText(text = uppercaseh)
}

get_upper_case_h <- function() {
  page <- xml2::read_html('https://en.wikipedia.org/wiki/Horse')
  heading <- rvest::html_node(page, '#firstHeading')
  heading <- rvest::html_text(heading)
  substr(heading, 1, 1)
}
