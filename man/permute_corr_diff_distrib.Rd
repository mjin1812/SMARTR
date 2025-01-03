% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis_plotting_functions.R
\name{permute_corr_diff_distrib}
\alias{permute_corr_diff_distrib}
\title{Generate array of null distribution of region pairwise correlation differences.}
\usage{
permute_corr_diff_distrib(
  df,
  correlation_list_name_1,
  correlation_list_name_2,
  n_shuffle = n_shuffle,
  seed = 5,
  method = "pearson"
)
}
\arguments{
\item{df}{dataframe}

\item{correlation_list_name_1}{permutation group 1}

\item{correlation_list_name_2}{permutation group 2}

\item{n_shuffle}{number of shuffles}

\item{seed}{random seed for replication}

\item{method}{(str, default = "pearson", options = c("pearson", "spearman")) Specifies the type of correlations to compute.
Spearman correlations are the Pearson linear correlations computed on the ranks of non-missing elements, using midranks for ties. See also \code{\link[Hmisc:rcorr]{Hmisc::rcorr()}}}
}
\value{
a matrix storing the permutation with the dimensions no. regions x no. regions x n_shuffle
}
\description{
Generate array of null distribution of region pairwise correlation differences.
}
