% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions-core.R
\name{createDataObj}
\alias{createDataObj}
\title{Create 'Phemd' object}
\usage{
createDataObj(data, markers, snames, datatype = "list",
  valtype = "counts")
}
\arguments{
\item{data}{List of length \var{num_samples} containing expression data; each element is of size \var{num_cells} x \var{num_markers}. Alternately a SingleCellExperiment object.}

\item{markers}{Vector containing marker names (i.e. column names of \code{all_data})}

\item{snames}{Vector containing sample names (i.e. names of samples contained in \code{all_data})}

\item{datatype}{Either "list" or "sce" (SingleCellExperiment with genes x cells)}

\item{valtype}{Type of assay data (i.e. "counts", "normcounts", "logcounts", "tpm", "cpm") if datatype is "sce"}
}
\value{
'Phemd' object containing raw multi-sample expression data and associated metadata
}
\description{
Wrapper function to create 'Phemd' object containing raw expression data and metadata
}
\details{
Note that each element in list can have different number of rows (i.e. number of cells in each sample can vary).
}
\examples{
my_phemdObj <- createDataObj(all_expn_data, all_genes, as.character(snames))

}
