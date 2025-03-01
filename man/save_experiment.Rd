% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{save_experiment}
\alias{save_experiment}
\title{Save experiment data}
\usage{
save_experiment(..., timestamp = FALSE)
}
\arguments{
\item{...}{parameter to pass experiment object}

\item{timestamp}{(bool) save the object with a date tag}
}
\description{
Saves experiment object into it's attribute output path as an RDATA file
save_experiment(e)
}
\examples{
\dontrun{
e <- save_experiment(e, timestamp = TRUE)
}
}
