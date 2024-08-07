% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_object_constructors.R
\name{slice}
\alias{slice}
\title{Create a slice object}
\usage{
slice(
  slice_ID = NA,
  coordinate = -1,
  atlas_plate = NA,
  conversion_factor = 1.0833,
  bin = 1,
  z_width = 24,
  hemisphere = NULL,
  channels = c("eyfp", "cfos", "colabel"),
  registration_path = "set registration image path",
  segmentation_path = "set segmentation data path",
  slice_directory = NULL,
  left_regions_excluded = c("fiber tracts", "VS"),
  right_regions_excluded = c("fiber tracts", "VS"),
  left_regions_included = NULL,
  right_regions_included = NULL,
  ...
)
}
\arguments{
\item{slice_ID}{(str, default = NA) Slice name}

\item{coordinate}{(num, default = -1) Allen mouse brain atlas coordinate aligning with slice.}

\item{atlas_plate}{(int, default = NA) Atlas place number. TODO: Currently unused}

\item{conversion_factor}{(num, 1.0833) pixel-to-micron conversion factor}

\item{bin}{(int, default = 1) Whether the registration image was binned in ImageJ.}

\item{z_width}{(num, default = 24) The z-stack width in um.}

\item{hemisphere}{(str, default = NULL) Hemisphere to process. "left", "right" or NULL is legal.}

\item{channels}{(str, default = c("cfos", "eyfp", "colabel")) The channels to process.}

\item{registration_path}{(str, default = 'set registration image path') May deprecate this in favor of slice_directory in future versions.}

\item{segmentation_path}{(str, default = 'set segmentation image path') Path to image used for segmentation function using base \code{\link[wholebrain:segment]{wholebrain::segment()}} function.}

\item{slice_directory}{(str, default = NULL) The root directory where slice information such as the registration or segmentation images or txt files are stored for a given slice.
TODO: May change the import and registration functions to only rely on this path.}

\item{left_regions_excluded}{(str, default = ("layer 1","PIR1","TR1","PAA1","NLOT1","OT1","MOBgl","OV","VLPO","SO",
"BA","TU","MEAav","ME","TMv","PVp","SUMl","SCzo","fiber tracts","VS")) The list of acronyms corresponding to regions to exclude for this slice's left hemisphere.}

\item{right_regions_excluded}{(str, default = ("layer 1","PIR1","TR1","PAA1","NLOT1","OT1","MOBgl","OV","VLPO","SO",
"BA","TU","MEAav","ME","TMv","PVp","SUMl","SCzo","fiber tracts","VS")) The list of acronyms corresponding to regions to exclude for this slice's right hemisphere.}

\item{left_regions_included}{(str, default = NULL) List of acronyms of regions to include from left hemisphere. All other regions will be exsluded. If not NULL, takes precedence over \code{left_regions_excluded}.}

\item{right_regions_included}{(str, default = NULL) List of acronyms of regions to include from right hemisphere. All other regions will be exsluded. If not NULL, takes precedence over \code{right_regions_excluded}.}

\item{...}{additional custom keyword pair attributes you'd like to store}
}
\value{
A slice, a colloquial term for an object of class 'slice'. A 'slice' object
is also a list, with class list.
}
\description{
slice() constructs an S3 object of class 'slice'. A slice object
consists of a list of lists storing information about registration, segmentation, raw mapped data and cleaned mapped data.
The object attributes are also stored as a list.
}
\details{
The slice attributes can be assigned as arguments to the slice constructor function. See the parameters listed for the default values for these attributes
Note that you are able to add custom attributes as keyword pairs, if you would like to keep track of an additional piece of information. However, this will only serve a descriptive purpose
and will not be used for analysis. You may not need to use all slice attributes but fill out as many are applicable to your experiment.
}
\examples{
slice_example <- slice() # initializes a slice object
}
