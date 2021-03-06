% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bubble_functions.R
\name{create_CI_bubble_step_track}
\alias{create_CI_bubble_step_track}
\title{Creates a CI bubble of 1-alpha level with a series of longitude-latitude 
points}
\usage{
create_CI_bubble_step_track(df_points_step_track, center_idx, alpha = 0.1,
  output_length = "nautical mile")
}
\arguments{
\item{df_points_step_track}{Dataframe of points - these corresponds to all 
the points at a certain point of the TCs track. Dataframe should only contain
latitude and longitude.}

\item{center_idx}{Index of the point that needs to be considered as a center}

\item{alpha}{Alpha level to which the bubble needs to be generated}

\item{output_length}{Unit of measure of the output.}
}
\value{
Dataframe with the points inside the 1-alpha level, with distance 
attached to the original dataframe.
}
\description{
This function return the 1-alpha percentage points closest to a point which 
belongs to the "central" simulated TC.
}
