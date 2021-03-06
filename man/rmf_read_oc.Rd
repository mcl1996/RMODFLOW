% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rmf-read-oc.R
\name{rmf_read_oc}
\alias{rmf_read_oc}
\alias{read_oc}
\title{Read a MODFLOW output control option file}
\usage{
rmf_read_oc(file = {     cat("Please select oc file ...\\n")     file.choose()
  })

read_oc(...)
}
\arguments{
\item{file}{filename; typically '*.oc'}
}
\value{
object of class oc
}
\description{
\code{read_oc} reads in a MODFLOW output control option file and returns it as an \code{\link{RMODFLOW}} oc object.
}
\section{Functions}{
\itemize{
\item \code{read_oc}: Deprecated function name
}}

\seealso{
\code{\link{write_oc}}, \code{\link{create_oc}} and \url{http://water.usgs.gov/nrp/gwsoftware/modflow2000/MFDOC/index.html?oc.htm}
}
