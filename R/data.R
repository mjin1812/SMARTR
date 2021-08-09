#' Premade.
#'
#' A filter used in wholebrain functions.
#'
#' @format A list of parameters to filter features of interest in an image
#' \describe{
#'   \item{alim}{price, in US dollars}
#'   \item{threshold.range}{weight of the diamond, in carats}
#'   \item{eccentricity}{eccentricity (elongation) of contours sets how round you want cell bodies to be. Default is 500 and smaller values equal to more round.}
#'   \item{Max}{Maximum value to display in the 8-bit rendered (sets sort of brightness contrast)}
#'   \item{Min}{Minimum value to display in the 8-bit rendered (sets sort of brightness contrast)}
#'   \item{brain.threshold}{the exact value where you want to start segmeting the brain outline in autofluorescence}
#'   \item{resize}{resize parameter to match the atlas to your pixel resolution, should be between 0.03 and 0.2 for most applications.}
#'   \item{blur}{blur parameter that sets the smoothness of the tissue outline, if magaded or jagged edges increase. Using a value fo 4 is usually recommended.}
#'   \item{downsample}{downsample, default is set to 0.25 and images with a size of 15000 x 8000 pixels can then usually be run smoothly}
#'   ...
#' }
"filter"

#' segmentation object compatible with wholebrain package functions
#'
#' A dataset containing the prices and other attributes of almost 54,000
#' diamonds.
#'
#' @format A
#' \describe{
#'   \item{filter}{list storing parameter use to segment and get brain contours}
#'   \item{soma}{list storing cell count data}
#' }
"segmentation.object"