% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions-core.R
\name{getArithmeticCentroids}
\alias{getArithmeticCentroids}
\title{Get arithmetic centroids (coordinates)}
\usage{
getArithmeticCentroids(ref_clusters)
}
\arguments{
\item{ref_clusters}{list containing each cluster of interest (each list element is a matrix of dimension num_cells x num_markers)}
}
\value{
Matrix of dimension num_cluster x num_markers; row \var{i} representing the arithmetic centroid of cluster \var{i}
}
\description{
Takes initial list and returns a matrix with row \var{i} representing the arithmetic centroid of cluster \var{i}
}
\details{
Private method (not exported in namespace)
}
\examples{
\dontrun{
cluster_centroids <- getArithmeticCentroids(ref_clusters)
}
}
