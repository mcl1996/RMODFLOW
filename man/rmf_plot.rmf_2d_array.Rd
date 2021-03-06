% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rmf-plot.rmf-2d-array.R
\name{rmf_plot.rmf_2d_array}
\alias{rmf_plot.rmf_2d_array}
\title{Plot a MODFLOW 2D array}
\usage{
\method{rmf_plot}{rmf_2d_array}(array, dis, bas = NULL,
  mask = rmfi_ifelse0(is.null(bas), array * 0 + 1, {    
  warning("Using first ibound layer as mask.", call. = FALSE)     bas$ibound[, ,
  1] }), colour_palette = rmfi_rev_rainbow,
  zlim = range(array[as.logical(mask)], finite = TRUE), nlevels = 7,
  type = "fill", levels = NULL, grid = FALSE, add = FALSE,
  height_exaggeration = 100, binwidth = round(diff(zlim)/20),
  label = TRUE, prj = NULL, crs = NULL, alpha = 1, plot3d = FALSE,
  height = NULL, title = NULL)
}
\arguments{
\item{array}{an object of class rmf_2d_array}

\item{dis}{discretization file object}

\item{bas}{basic file object; optional}

\item{mask}{a 2D array with 0 or F indicating inactive cells; optional; defaults to having all cells active or, if bas is provided, the first layer of bas$ibound}

\item{colour_palette}{a colour palette for imaging the array values}

\item{zlim}{vector of minimum and maximum value for the colour scale}

\item{nlevels}{number of levels for the colour scale; defaults to 7}

\item{type}{plot type: 'fill' (default), 'factor', 'grid' or 'contour'}

\item{levels}{labels that should be used on the factor legend; if NULL the array factor levels are used}

\item{grid}{logical; should grid lines be plotted? alternatively, provide colour of the grid lines.}

\item{add}{logical; if TRUE, provide ggplot2 layers instead of object, or add 3D plot to existing rgl device; defaults to FALSE}

\item{height_exaggeration}{height exaggeration for 3D plot; optional}

\item{binwidth}{binwidth for contour plot; defaults to 1/20 of zlim}

\item{label}{logical; should labels be added to contour plot}

\item{prj}{projection file object}

\item{crs}{coordinate reference system for the plot}

\item{alpha}{transparency value; defaults to 1}

\item{plot3d}{logical; should a 3D plot be made}

\item{height}{2D array for specifying the 3D plot z coordinate}

\item{title}{plot title}
}
\value{
ggplot2 object or layer; if plot3D is TRUE, nothing is returned and the plot is made directly
}
\description{
\code{rmf_plot.rmf_2d_array} plots a MODFLOW 2D array.
}
