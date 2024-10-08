% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis_plotting_functions.R
\name{create_joined_networks}
\alias{create_joined_networks}
\title{Create a joined network to visualize overlapping connections with the same outer joined node set.}
\usage{
create_joined_networks(
  e,
  correlation_list_names = c("male_agg", "female_non"),
  channels = "cfos",
  ontology = "unified",
  alpha = 0.001,
  pearson_thresh = 0.9,
  alpha2 = NULL,
  pearson_thresh2 = NULL,
  anatomical.order = c("Isocortex", "OLF", "HPF", "CTXsp", "CNU", "TH", "HY", "MB",
    "HB", "CB"),
  export_overlapping_edges = TRUE
)
}
\arguments{
\item{e}{experiment object}

\item{correlation_list_names}{(str vec) character vector of the two correlation lists used to include in a joined network}

\item{channels}{(str, default = c("cfos", "eyfp", "colabel")) The channels to process.}

\item{ontology}{(str, default = "allen") Region ontology to use. options = "allen" or "unified"}

\item{alpha}{(float, default = 0.05) The significance threshold for including brain regions in the network. if NULL or NA,
this threshold is not applied.}

\item{pearson_thresh}{(float, default = 0.8) The pearson correlation coefficient threshold to apply for filtering out}

\item{alpha2}{(NULL) If not NULL, this gives the option of filtering the second network by a different alpha from the first. The \code{alpha} parameter will then be used as the threshold for network 1.}

\item{pearson_thresh2}{(NULL) If not NULL, this gives the option of filtering the second network by a different pearson threshold from the first network.
The \code{pearson_thresh} parameter will then be used as the threshold for network 1.}

\item{anatomical.order}{(vec, c("Isocortex","OLF","HPF","CTXsp","CNU","TH","HY","MB","HB","CB")) The default super region acronym list that groups all subregions in the dataset.}

\item{export_overlapping_edges}{(bool, default  = TRUE) Whether to export the overlapping edges between the two networks as a csv into the \code{table} directory.}
}
\value{
e experiment object. This object now has a new added element called \code{networks.} This is a list storing a
graph object per channel for each network analysis run. The name of each network (\code{network_name}) is the same as the \code{correlation_list_name}
used to generate the network. This \code{network_name} is fed as a parameter into the
\code{\link[=plot_network]{plot_network()}} function.
}
\description{
Create a joined network to visualize overlapping connections with the same outer joined node set.
}
\examples{
e sundowning <- create_networks(sundowning, correlation_list_name = "female_control", alpha = 0.05)
}
\seealso{
\code{\link[=plot_networks]{plot_networks()}}
}
