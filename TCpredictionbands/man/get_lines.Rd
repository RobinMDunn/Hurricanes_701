% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/delta_ball.R
\name{get_lines}
\alias{get_lines}
\title{Get edges within union of balls}
\usage{
get_lines(delaunay_tri_data, data_raw, delta, n_steps = 100)
}
\arguments{
\item{delaunay_tri_data}{sp data of delaunay triangles}

\item{data_raw}{data frame with center points of balls}

\item{delta}{fixed radius of all the balls}

\item{n_steps}{number of equidistance points along the line, past delta 
on both sides, that will be checked to approximate all points along the line}
}
\value{
\describe{
\item{lines_mat}{lines of edges that are kept (each edge has 2 rows and 
share an index). These edges are within the union of the balls.}
\item{removed_mat}{lines of edges that should be removed (i.e. are not 
with the union of balls.)}
}
}
\description{
Figure out which edges in the delaunay diagram are within the 
union of balls
}
