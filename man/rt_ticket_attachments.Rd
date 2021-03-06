% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rt_ticket_attachments.R
\name{rt_ticket_attachments}
\alias{rt_ticket_attachments}
\title{Get ticket attachments}
\usage{
rt_ticket_attachments(ticket_id, ...)
}
\arguments{
\item{ticket_id}{(numeric) The ticket identifier}

\item{...}{Other arguments passed to \code{\link{rt_POST}}}
}
\description{
Retrieves attachment metadata for a ticket
}
\examples{
\dontrun{
rt_ticket_attachments(2)
}
}
