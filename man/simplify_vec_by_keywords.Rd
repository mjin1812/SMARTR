% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/housekeeping_functions.R
\name{simplify_vec_by_keywords}
\alias{simplify_vec_by_keywords}
\title{Simplify vector of acronyms by keywords.}
\usage{
simplify_vec_by_keywords(
  vec,
  keywords = c("layer", "part", "stratum", "division", "leaflet", "Subgeniculate",
    "island", "Islands", "Fields of Forel", "Cajal", "Darkschewitsch", "Precommissural")
)
}
\arguments{
\item{vec}{(vector) Must contain c"acronym"}

\item{keywords}{(vec, default = c("layer","part","stratum","division")) a list of keywords to simplify based on region name.}
}
\value{
df, dataframe as a tibble with included long name and acronyms that are simplified to parents
}
\description{
Simplify vector of acronyms by keywords.
}
