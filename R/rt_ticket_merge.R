#' Mege one ticket into another
#'
#' @param origin (character|numeric) Ticket ID to merge into \code{into}
#' @param into (character|numeric) Ticket ID to merge \code{origin} into
#'
#' @return (rt_api) The response
#' @export
#'
#' @examples
#' \dontrun{
#' # First, create two tickets
#' ticket_one <- rt_ticket_create("General")
#' ticket_two <- rt_ticket_create("General")
#'
#' # Then merge them together
#' ticket_merge(ticket_one, ticket_two)
#' }
rt_ticket_merge <- function(origin, into) {
  url <- rt_url("ticket", origin, "merge", into)
  rt_POST(url)
}
