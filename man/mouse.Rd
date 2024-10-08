% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_object_constructors.R
\name{mouse}
\alias{mouse}
\title{Create a mouse object}
\usage{
mouse(
  mouse_ID = "set ID",
  sex = "female",
  age = NULL,
  genotype = NULL,
  reporter = NULL,
  strain = NULL,
  experiment = NULL,
  group = NULL,
  drug = NULL,
  cohort = NULL,
  input_path = "set input path",
  output_path = "set output path",
  ...
)
}
\arguments{
\item{mouse_ID}{(str, default = 'set ID') e.g. '1_1'}

\item{sex}{(str, default = "female")}

\item{age}{(str, default = NULL)}

\item{genotype}{(str, default = NULL)}

\item{reporter}{(str, default = NULL)}

\item{strain}{(str, default = NULL) e.g. 'B6'}

\item{experiment}{(str, default = NULL) e.g. 'sundowning'}

\item{group}{(str, default = NULL) e.g. 'control' or 'AD'}

\item{drug}{(str, default = NULL) e.g. 'vehicle' or 'ketamine'}

\item{cohort}{(str, default = NULL)}

\item{input_path}{(str, default = 'set input path') Root to path containing the mouse data and slice image subfolders. This is useful if you've have changed computers and the drive mapped to the data has slightly changed.                 TODO: currently not used. Will include search function to parse out files and individual slice information for a mouse.}

\item{output_path}{(str, default = 'set output path') Set the path to the folder you want to save the mouse RDATA file to.}

\item{...}{additional custom keyword pair attributes you'd like to store}
}
\value{
A mouse, a colloquial term for an object of class 'mouse'. A 'mouse' object
is also a list, with class list.
}
\description{
mouse() constructs an S3 object of class 'mouse'. A mouse object
consists of a list of slice objects and attributes stored as a list.

The slice objects are added to a mouse object with the function \code{\link[=add_slice]{add_slice()}}.
Each slice is a named element in the mouse object list, with the naming convention dependent on the slice ID and hemisphere attributes of the slice object.

If you are processing either a left or right hemisphere, the slice is named with the convention: "slice_ID" appended with its "hemisphere"
If the hemisphere attribute is NULL,  i.e. if the whole slice aligns well with a single atlas plate and there is no need to create separate slice objects per hemisphere,
then the slice is named with the convention: "slice_ID"
}
\details{
The mouse attributes can be assigned as arguments to the mouse constructor function. See the parameters listed for the default values for these attributes
Note that you are able to add custom attributes as keyword pairs, if you would like to keep track of an additional piece of information. However, this will only serve a descriptive purpose
and will not be used for analysis. You may not need to use all mouse attributes but fill out as many are applicable to your experiment.
}
\examples{
mouse_example <- mouse() # initializes a mouse object
}
\seealso{
See also \code{\link[=slice]{slice()}} for the description of a slice object and it's attributes.
See also \code{\link[=add_slice]{add_slice()}} for the description of how to add a slice object to a mouse object.
}
