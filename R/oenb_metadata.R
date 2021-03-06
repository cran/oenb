#' Get Metadata
#'
#' Get metadata on individual series from the OeNB's data web service.
#'
#' @param pos character specifying the position ID of the indicator of interest.
#' See \code{\link{oenb_dataset}} to obtain the required ID.
#' @inheritParams oenb_dataset
#'
#' @return A data frame containing metadata on an indicator.
#'
#' @examples
#' \donttest{
#' meta <- oenb_metadata(id = "11", pos = "VDBFKBSC217000")
#' meta
#' }
#'
#' @export
oenb_metadata <- function(id, pos, lang = "EN") {
  if (!lang %in% c("DE", "EN")) {"Specified language is not supported."}
  url <- paste("https://www.oenb.at/isadataservice/meta?lang=", lang, sep = "")
  url <- paste(url, "&hierid=", id, sep = "")
  url <- paste(url, "&pos=", pos, sep = "")
  xml <- XML::xmlParse(readLines(url))

  meta <- XML::getNodeSet(xml, "//meta", fun = XML::xmlToList)[[1]]
  pos <- which(unlist(lapply(meta, function(x) {length(x) == 1})))

  result <- NULL
  for (i in pos) {
    temp <- data.frame("attribute" = names(meta)[i],
                       "description" = meta[[i]], stringsAsFactors = FALSE)
    result <- rbind(result, temp)
  }

  return(result)
}
