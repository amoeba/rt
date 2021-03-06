#' Add ticket history reply
#'
#' Add a response to an existing ticket
#'
#' @inheritParams rt_ticket_attachment
#' @param text (character) Text that to add as a comment
#' @param cc (character) Email for cc
#' @param bcc (character) Email for bcc
#' @param time_worked (character)
#' @param attachment_path (character) Path to a file to upload
#' @param ... Other arguments passed to \code{\link{rt_POST}}
#'
#' @export
#'
#' @examples
#' \dontrun{
#' rt_ticket_history_reply(11,
#'                         "Thank you.
#'
#'                         Have a great day!")
#' }
rt_ticket_history_reply <- function(ticket_id,
                                    text,
                                    cc = NULL,
                                    bcc = NULL,
                                    time_worked = "0",
                                    attachment_path = NULL,
                                    ...) {

  params <- list(id = ticket_id,
                 Action = "correspond",
                 Text = text,
                 CC = cc,
                 Bcc = bcc,
                 TimeWorked = time_worked,
                 Attachment = attachment_path)

  url <- rt_url("ticket", ticket_id, "comment", query_params = params)
  reply_body <- construct_newline_pairs(params)

  rt_POST(url, body = list(content = reply_body), ...)
}
