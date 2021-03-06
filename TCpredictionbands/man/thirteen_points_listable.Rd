% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/thirteen_point_compression.R
\name{thirteen_points_listable}
\alias{thirteen_points_listable}
\title{List of 13 point compressions}
\usage{
thirteen_points_listable(list_df, position = 5:6, longlat = TRUE,
  verbose = TRUE)
}
\arguments{
\item{list_df}{list of dfs, where the longlat points are are in the 
position columns}

\item{position}{the columns of the data frames that contain the desired 
longlat coordinates}

\item{longlat}{boolean logical if columns are longlat 
(false if they are latlon)}

\item{verbose}{boolean for having a progress bar}
}
\value{
List of 13 point compression data frame for each path
}
\description{
Creates list of 13 point long/lat expression of each path
}
