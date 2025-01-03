% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mapping_functions.R
\name{get.registered.areas.bu}
\alias{get.registered.areas.bu}
\title{Get the registered areas}
\usage{
get.registered.areas.bu(regions, registration, conversion.factor = 1)
}
\arguments{
\item{regions}{vector of acronyms of regions in the registration}

\item{registration}{wholebrain registration object}

\item{conversion.factor}{pixel-to-micron conversion factor}
}
\value{
tibble dataframe with the columns \code{name}, \code{acronym}, \code{right.hemisphere}, and  \code{area}
}
\description{
Get the registered areas
}
