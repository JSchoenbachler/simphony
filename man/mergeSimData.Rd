% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/accessories.R
\name{mergeSimData}
\alias{mergeSimData}
\title{Merge abundance data, feature metadata, and sample metadata}
\usage{
mergeSimData(simData, features = NULL)
}
\arguments{
\item{simData}{List with the following elements, such as returned by
\code{simphony()}:
\describe{
\item{abundData}{Matrix of abundance values, with rownames for features and
colnames for samples.}
\item{sampleMetadata}{\code{data.table} with columns \code{sample} and \code{cond}.}
\item{featureMetadata}{\code{data.table} with columns \code{feature} and \code{cond}.}
}}

\item{features}{Character vector of features for which to get abundance data.
If NULL, then all features.}
}
\value{
\code{data.table}.
}
\description{
Merge a simulation's abundance data, feature metadata, and sample metadata
into one \code{data.table}. This function is useful for making plots using
ggplot2.
}
\examples{
library('data.table')
featureGroups = data.table(amp = c(0, 1))
simData = simphony(featureGroups)
mergedSimData = mergeSimData(simData, simData$featureMetadata$feature[1:2])

}
\seealso{
\code{\link[=simphony]{simphony()}}
}
