% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions-core.R
\name{embedCells}
\alias{embedCells}
\title{Generate Monocle2 embedding}
\usage{
embedCells(obj, data_model = "negbinomial_sz", ...)
}
\arguments{
\item{obj}{'Phemd' object containing aggregated data}

\item{data_model}{One of the following: 'negbinomial_sz', 'negbinomial', 'tobit', 'uninormal', 'gaussianff'. See "Family Function" table at the following link for more details on selecting the proper one. \url{http://cole-trapnell-lab.github.io/monocle-release/docs/#getting-started-with-monocle}}

\item{...}{Additional parameters to be passed to \code{reduceDimension} function}
}
\value{
Same as input 'Phemd' object with additional Monocle2 object in @monocle_obj slot
}
\description{
Takes as input a Phemd object with aggregated data and returns updated object with Monocle2 object in @monocle_obj slot
}
\details{
Wrapper function for \code{reduceDimension} in Monocle 2 package. \code{aggregateSamples} needs to be called before running this function.
}
\examples{
my_phemdObj <- createDataObj(all_expn_data, all_genes, as.character(snames))
my_phemdObj_lg <- removeTinySamples(my_phemdObj, 10)
my_phemdObj_lg <- aggregateSamples(my_phemdObj_lg, max_cells=1000)
my_phemdObj_lg <- embedCells(my_phemdObj_lg, data_model = 'gaussianff', sigma=0.02, maxIter=2)
}
