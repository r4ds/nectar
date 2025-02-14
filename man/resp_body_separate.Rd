% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resp_body_separate.R
\name{resp_body_separate}
\alias{resp_body_separate}
\title{Extract response body into list}
\usage{
resp_body_separate(resp, resp_body_fn = resp_body_auto)
}
\arguments{
\item{resp}{(\code{httr2_response}) A single \code{\link[httr2:response]{httr2::response()}} object (as
returned by \code{\link[httr2:req_perform]{httr2::req_perform()}}).}

\item{resp_body_fn}{(\code{function}) A function to extract the body of the
response. Default: \code{\link[=resp_body_auto]{resp_body_auto()}}.}
}
\value{
The parsed response body wrapped in a \code{\link[=list]{list()}}. This is useful for
things like raw vectors that you wish to parse with \code{\link[httr2:resps_successes]{httr2::resps_data()}}.
}
\description{
Extract response body into list
}
