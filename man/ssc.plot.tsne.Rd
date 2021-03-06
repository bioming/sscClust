% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sscClust.R
\name{ssc.plot.tsne}
\alias{ssc.plot.tsne}
\title{Plot on tSNE map}
\usage{
ssc.plot.tsne(obj, assay.name = "exprs", gene = NULL, columns = NULL,
  splitBy = NULL, plotDensity = F, colSet = list(),
  reduced.name = "iCor.tsne", reduced.dim = c(1, 2), xlim = NULL,
  ylim = NULL, size = NULL, brewer.palette = "YlOrRd", adjB = NULL,
  clamp = NULL, out.prefix = NULL, p.ncol = 3, width = NA,
  height = NA, base_aspect_ratio = 1.1, peaks = NULL)
}
\arguments{
\item{obj}{object of \code{singleCellExperiment} class}

\item{assay.name}{character; which assay (default: "exprs")}

\item{gene, }{character; genes to be showed. (default: NULL)}

\item{columns}{character; columns in colData(obj) to be showd. (default: NULL)}

\item{plotDensity}{logical; whether plot 2D density. (default F)}

\item{colSet}{list; mapping iterms in the names to colors in the values. (default: list())}

\item{reduced.name}{character; names in the reducedDimNames. (default: "iCor.tsne")}

\item{reduced.dim}{integer; which dimensions of the reduced data to be used. (default: c(1,2))}

\item{xlim}{integer or NULL; only draw points lie in the ragne specified by xlim and ylim (default NULL)}

\item{ylim}{integer or NULL; only draw points lie in the ragne specified by xlim and ylim (default NULL)}

\item{size}{double; points' size. If NULL, infer from number of points (default NULL)}

\item{brewer.palette}{character; which palette to use. (default: "YlOrRd")}

\item{adjB}{character; batch column of the colData(obj). (default: NULL)}

\item{clamp}{integer vector; expression values will be clamped to the range defined by this parameter, such as c(0,15). (default: NULL )}

\item{out.prefix}{character; output prefix. (default: NULL)}

\item{p.ncol}{integer; number of columns in the figure layout. (default: 3)}

\item{width}{numeric; width of the plot, used for geneOnTSNE. (default: NA)}

\item{height}{numeric; height of the plot, used for geneOnTSNE. (default: NA)}

\item{base_aspect_ratio}{numeric; base_aspect_ratio, used for plotting metadata. (default 1.1)}

\item{peaks}{integer or character; index or names of the peaks. (default: NULL)}
}
\description{
Plot on tSNE map
}
\details{
If `gene` is not NULL, expression of the specified genes will be plot on the tSNE map; if columns in not
NULL, colData of obj with names in `columns` will be plot on the tSNE map. The tSNE map used is specified by option
`reduced.name` and `reduced.dim`. Both `gene` and `columns` can be non-NULL. For list `colSet`, each element define
a color mapping for the responding iterm in the `column`; if not specifed, automatically generated color mapping will
be used.
}
