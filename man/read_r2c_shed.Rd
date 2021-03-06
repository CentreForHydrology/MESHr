% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read_r2c_shed.R
\name{read_r2c_shed}
\alias{read_r2c_shed}
\title{Reads r2c file of a MESH watershed}
\usage{
read_r2c_shed(r2cFile = "", values_only = TRUE, as_rasters = TRUE)
}
\arguments{
\item{r2cFile}{Required. Name of \code{r2c} file.}

\item{values_only}{Optional. If \code{TRUE} (the default), then only the values
are returned, either as a raster brick (useful for plotting) or as a 3D array 
(useful for analysis). If \code{FALSE}, then a \emph{list} will be returned, 
containing the 1) the data, 2) the metadata (the variable names, types and 
units) are returned for each layer, and 3) the r2c file header lines.}

\item{as_rasters}{Optional. If \code{TRUE}, the layers will be returned as 
as raster brick. If \code{FALSE}, they will be returned as an array.}
}
\value{
Returns either an array or a raster brick of values, and optionally,
the meta data and file header.
}
\description{
This function reads in a file containing the layers which
define a MESH watershed. To read in a file of timeseries, use the function
\code{r2c2raster}.
}
\examples{
\dontrun{
# read in basin as a raster brick
basin <-  read_r2c_shed("MESH_drainage_database.r2c")
# read in as an array
basin_array <- read_r2c_shed("MESH_drainage_database.r2c", as_rasters = FALSE)
# get meta data as well
basin_array <- read_r2c_shed("MESH_drainage_database.r2c", values_only = FALSE, 
as_rasters = FALSE)
}

}
\seealso{
\code{\link{read_r2c_raster}}
}
\author{
Kevin Shook
}
