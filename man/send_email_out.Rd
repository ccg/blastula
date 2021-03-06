% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/send_email_out.R
\name{send_email_out}
\alias{send_email_out}
\title{Send an email message}
\usage{
send_email_out(message, from, to, subject = NULL, cc = NULL, bcc = NULL,
  attachments = NULL, attach_mime_types = NULL, attach_encodings = NULL,
  attach_dispositions = NULL, creds_file = NULL, sender = NULL,
  host = NULL, port = NULL, user = NULL, password = NULL,
  use_ssl = TRUE, use_tls = FALSE, authenticate = TRUE, ehlo = FALSE,
  verbose = FALSE, debug = FALSE)
}
\arguments{
\item{message}{the email message object,
as created by the \code{compose_email()}
function. The object's class is
\code{email_message}}

\item{from}{the email address of the
sender. This does not have to be
the same email that is associated with
the account actually sending the message.}

\item{to}{a vector of email addresses
serving as primary recipients for the
message. For secondary recipients, use
the \code{cc} and \code{bcc} arguments.}

\item{subject}{the subject of the
message, which is usually a brief summary
of the topic of the message.}

\item{cc}{a vector of email addresses
for sending the message as a carbon
copy. This list of for those who are to
receive a copy of a message addressed
primarily to another. The list of
recipients in the CC list is visible
to all other recipients of the message.}

\item{bcc}{a vector of email addresses
for sending the message as blind carbon
copies. Any email addresses provided
here will receive the message and these
email addresses will be concealed from
other recipients (including others on
the BCC list).}

\item{attachments}{a vector of paths
to files to be attached to the email.}

\item{attach_mime_types}{an optional
vector of mime types to use for
each of the attachments specified in
\code{attachments}. If not provided,
mime types will be assigned based on
file extensions.}

\item{attach_encodings}{an optional
vector of encoding types to use for
each of the attachments specified in
\code{attachments}. Options are
\code{base64}, \code{7bit},
\code{8bit}, or \code{none}.}

\item{attach_dispositions}{an optional
vector of disposition types for each
of the attachments specified in
\code{attachments}. Options are
\code{inline} and \code{attachment}.}

\item{creds_file}{an optional path to
an email credentials file. This file
must be created by the
\code{create_email_creds_file()}
function.}

\item{sender}{the sender name.}

\item{host}{the email host.}

\item{port}{the port associated with
the email account.}

\item{user}{the username associated
with the email account.}

\item{password}{the password associated
with the email account.}

\item{use_ssl}{a logical value to
indicate whether to use SSL.}

\item{use_tls}{a logical value to
indicate whether to use TLS.}

\item{authenticate}{a logical value to
indicate whether to use authentication.}

\item{ehlo}{a logical value to indicate
whether to force an EHLO command after
connection to the SMTP host.}

\item{verbose}{a logical value indicating
whether verbose messages should be
printed to the console during sending
of email.}

\item{debug}{a logical value to indicate
whether the mail sending statement
should be printed to the console. No
emails are sent when debug is set to
\code{TRUE}.}
}
\description{
Send an email message to one or more
recipients.
}
