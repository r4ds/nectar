% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resp_body_auto.R
\name{.resp_body_auto_other}
\alias{.resp_body_auto_other}
\title{Automatically choose more body parsers}
\usage{
.resp_body_auto_other(resp)
}
\arguments{
\item{resp}{(\code{httr2_response}) A single \code{\link[httr2:response]{httr2::response()}} object (as
returned by \code{\link[httr2:req_perform]{httr2::req_perform()}}).}
}
\value{
The parsed response body.
}
\description{
This helper function exists to find somewhat variable content types and
attempt to send them to the proper body parser.
}
\keyword{internal}
