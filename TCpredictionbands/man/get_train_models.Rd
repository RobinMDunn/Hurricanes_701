% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/regression_functions.R
\name{get_train_models}
\alias{get_train_models}
\title{Train models for TC simulations}
\usage{
get_train_models(train)
}
\arguments{
\item{train}{List of train TCs}
}
\value{
List containing the following trained models: 
\code{bearing_regs_auto}, \code{speed_regs_auto}, 
\code{bearing_regs_nonauto}, \code{speed_regs_nonauto}, \code{death_regs}, 
\code{death_dens}, \code{death_rate}, \code{max_length}, 
\code{bad_locations}. (See details section.)
}
\description{
Fit bearing, speed, and death models for TC simulations
}
\details{
Models fit on training TC data: 
\code{bearing_regs_auto}: block-specific AR models for bearing
\code{speed_regs_auto}: block-specific AR models for speed
\code{bearing_regs_nonauto}: block-specific non-AR models for bearing
\code{speed_regs_nonauto}: block-specific non-AR models for speed
\code{death_regs}: block-specific logistic reg models for TC death
\code{death_dens}: kernel density for TC death times
\code{death_rate}: 1/mean(train TC lengths). This is the MLE assuming an
exponential distribution on TC length. 
\code{max_length}: max length of training TCs
\code{bad_locations}: blocks with <= 1 death. Will use death_rate instead
of death_regs in these blocks.
}
