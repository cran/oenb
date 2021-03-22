## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----cran, eval = FALSE-------------------------------------------------------
#  install.packages("oenb")

## ----github, eval = FALSE-----------------------------------------------------
#  # install.packages("devtools")
#  devtools::install_github("franzmohr/oenb")

## ---- eval = FALSE------------------------------------------------------------
#  library("oenb")

## ---- eval = FALSE------------------------------------------------------------
#  toc <- oenb_toc()
#  head(toc)

## ---- eval = FALSE------------------------------------------------------------
#  overview <- oenb_dataset(id = "11")
#  head(overview)

## ---- eval = FALSE------------------------------------------------------------
#  attrib <- oenb_attributes(id = "11", pos = "VDBFKBSC217000")
#  attrib

## ---- eval = FALSE------------------------------------------------------------
#  freq <- oenb_frequency(id = "11", pos = "VDBFKBSC217000")
#  freq

## ---- eval = FALSE------------------------------------------------------------
#  series <- oenb_data(id = "11", pos = "VDBFKBSC217000", attr = c("dval3" = "AT"))

## ---- eval = FALSE------------------------------------------------------------
#  meta <- oenb_metadata(id = "11", pos = "VDBFKBSC217000")
#  meta

