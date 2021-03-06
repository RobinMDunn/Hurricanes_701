% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggplot_visual_functions.R
\name{ggvis_kde_contour}
\alias{ggvis_kde_contour}
\title{Create ggplot of kde set of contour}
\usage{
ggvis_kde_contour(level_contour_list, base_graph = NULL, zoom = 4,
  color = "pink", ...)
}
\arguments{
\item{level_contour_list}{list of data frame of level contours that can be 
be produced from putting the a list object into the 
function \code{\link{contour_list_to_df}}, which expects to take in
the \code{contour} piece of objects outputed by the 
\code{\link{kde_from_tclist}}. 

\emph{Note: If one inserts a list
of data frames or matrices (assumed to a list of TCs), that this 
function will attempt to create the kde PB using 
\code{\link{kde_from_tclist}} and process to data and make the visual.
If one inserts a list with sub-elements named \code{contour}, 
\code{area}, \code{kde_object} (assumed to be output from 
\code{\link{kde_from_tclist}}), then the function will apply 
\code{\link{contour_list_to_df}} to the \code{contour} component. 
If you are making this function create the full KDE PB, please make
sure to pass a \code{alpha} in to make the object (see 
\code{\link{kde_from_tclist}} for details). }}

\item{base_graph}{ggplot object for base graph 
(created from data_out otherwise)}

\item{zoom}{map zoom for \code{\link[ggmap]{ggmap}}}

\item{color}{color of band}

\item{...}{interior \code{\link[ggplot2]{geom_path}} or 
\code{\link{kde_from_tclist}} parameters.}
}
\value{
ggplot object of contour and data points.
}
\description{
Create ggplot of kde set of contour
}
\examples{
kde_list_object <- kde_from_tclist(sample_sim, alpha = .05)
level_contour_list <- contour_list_to_df(kde_list_object$contour)

# standard usage of the function
ggvis_kde_contour(level_contour_list, color = "red")

# using the KDE PB object:
ggvis_kde_contour(kde_list_object, color = "blue")

# using the simulated curves:
ggvis_kde_contour(sample_sim, color = "purple", alpha = .05)
}
