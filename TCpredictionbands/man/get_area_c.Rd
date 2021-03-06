% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convex_hull.R
\name{get_area_c}
\alias{get_area_c}
\title{Get area of convex hull}
\usage{
get_area_c(data, position = 1:2)
}
\arguments{
\item{data}{points to find a convex hull over (assumed n x 2)}

\item{position}{Position of the longitude/latitude pair}
}
\value{
\item{polygon}{dataframe}
\item{size}{area of the convex hull}
\item{poly}{spatial polygon object of convex hull}
}
\description{
Get area of convex hull
}
\examples{
\dontrun{
n    <- 3000
data <- data.frame(
  tt = sort(runif(min = 0,max = 2*pi,n = n))
)
data <- mutate(data,
xx = cos(tt) + rnorm(n = n,mean = 0,sd = .1) + 1*(tt > pi),
yy = sin(tt) + rnorm(n = n,mean = 0,sd = .1),
zz = cos(sqrt(tt)) + rnorm(n = n, mean = 0, sd = .1),
ww = yy * tt + rnorm(n = n, mean = 0, sd = .1)
)

data_points <- data \%>\% select(xx, yy)
# covex hull example

chull_out <- get_area_c(data_points)
c_points <- chull_out$poly
ggplot(data_points) + geom_point(aes(x = xx, y = yy)) +
  geom_path(data = c_points, 
            aes(x = xx, y = yy), color = "red")
}
}
