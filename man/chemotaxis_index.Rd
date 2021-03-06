% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/track.R
\name{chemotaxis_index}
\alias{chemotaxis_index}
\title{Calculate the mean chemotaxis index of a track object.}
\usage{
chemotaxis_index(tracks, x_var = "Location_Center_X",
  y_var = "Location_Center_Y")
}
\arguments{
\item{tracks}{data frame with track objects}

\item{x_var}{variable name / columne name used for x-coordinates}

\item{y_var}{variable name / columne name used for y-coordinates}
}
\value{
chemotaxis_index
}
\description{
Calculate the mean chemotaxis index of a track object.
}
\examples{
data <- tibble::tibble(
  Metadata_timePoint = c(1:5),
  Location_Center_X = c(1, 2, 3, 4, 5),
  Location_Center_Y = c(1, 1, 1, 1, 1),
  TrackObjects_Label = c(rep(1, 5))
)
 tracks <- migrationminer::displace(data,"TrackObjects_Label")
 chemotaxis_index <-  migrationminer::chemotaxis_index(tracks)
}
