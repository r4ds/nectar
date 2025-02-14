% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/req_init.R
\name{req_init}
\alias{req_init}
\title{Setup a basic API request}
\usage{
req_init(
  base_url,
  ...,
  additional_user_agent = NULL,
  call = rlang::caller_env()
)
}
\arguments{
\item{base_url}{(\verb{length-1 character}) The part of the url that is shared by
all calls to the API. In some cases there may be a family of base URLs,
from which you will need to choose one.}

\item{...}{These dots are for future extensions and must be empty.}

\item{additional_user_agent}{(\verb{length-1 character}) A string to identify
where a request is coming from. We automatically include information about
your package and nectar, but use this to provide additional details.
Default \code{NULL}.}

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
For a given API, the \code{base_url} and user agent will generally be the same for
every call to that API. Use this function to prepare that piece of the
request once for easy reuse.
}
\examples{
req_init("https://example.com")
req_init(
  "https://example.com",
  additional_user_agent = "my_api_client (https://my.api.client)"
)
}
\seealso{
Other opinionated request functions: 
\code{\link{req_modify}()},
\code{\link{req_pagination_policy}()},
\code{\link{req_prepare}()},
\code{\link{req_tidy_policy}()}
}
\concept{opinionated request functions}
