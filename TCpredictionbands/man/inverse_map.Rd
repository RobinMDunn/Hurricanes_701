% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/path_functions.R
\name{inverse_map}
\alias{inverse_map}
\title{Predict hurricane path from projections}
\usage{
inverse_map(distance_projection, projection_locs, old_locs, new_p_loc, K = 7)
}
\arguments{
\item{distance_projection}{distances between observations in projection space 
(euclidean structure assumed)}

\item{projection_locs}{projection location of training data}

\item{old_locs}{true paths (list) of training data}

\item{new_p_loc}{new observation's location in projection (p) space}

\item{K}{Number of neigbhors used to estimate \eqn{\sigma_i(K)}}
}
\value{
predicted path of new observation
}
\description{
Predicts the hurricane path from training data and location of 
projection

This function does the following:
1) gets a prediction for \eqn{s_i(k)} for the new observation in the projection 
space
2) uses the kNN approach to calculate closeness weights (scaled obviously)
3) predicts the original space point by weighting the observations that it 
has seen
}
