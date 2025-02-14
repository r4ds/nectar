% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/req_pkg_user_agent.R
\name{req_pkg_user_agent}
\alias{req_pkg_user_agent}
\title{Append package information to user agent}
\usage{
req_pkg_user_agent(
  req,
  pkg_name = get_pkg_name(call),
  pkg_url = NULL,
  call = rlang::caller_env()
)
}
\arguments{
\item{req}{(\code{httr2_request}) A \code{\link[httr2:request]{httr2::request()}} object.}

\item{pkg_name}{(\verb{length-1 character}) The name of the calling package. This
will usually be automatically determined based on the source of the call.}

\item{pkg_url}{(\verb{length-1 character}) A url for information about the calling
package (default \code{NULL}).}

\item{call}{(\code{environment}) The environment from which a function was called,
e.g. \code{\link[rlang:stack]{rlang::caller_env()}} (the default). The environment will be mentioned
in error messages as the source of the error. This argument is particularly
useful for functions that are intended to be called as utilities inside
other functions.}
}
\value{
A \code{\link[httr2:request]{httr2::request()}} object with additional class \code{nectar_request}.
}
\description{
Add information about nectar and the calling package (if called from a
package) to the user agent string.
}
\examples{
req <- httr2::request("https://example.com")
req$options$useragent
req_pkg_user_agent(req)$options$useragent
req_pkg_user_agent(req, "stbl")$options$useragent
}
