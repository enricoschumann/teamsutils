\name{teamsutils}
\alias{teamsutils}
\alias{teamsutils-package}
\alias{message_card}
\alias{send_message_card}
\title{
  Send Message Card
}
\description{
  Send Message Card to Teams Channel

}
\usage{
message_card(text, title, ...)
send_message_card(wh, msg, ...)
}
\arguments{
  \item{wh}{
    webhook: an \acronym{URL}
  }
  
  \item{msg}{
    message (a string)
}
  \item{text,title}{
    strings
}
  \item{\dots}{

  }
}
\details{
  Experimental.
}
\value{
  the return of \code{\link[httr]{POST}}
}
%% \references{
%%   %% ~put references to the literature/web site here ~
%% }
\author{
  Enrico Schumann
}
%% \seealso{
%% %% ~~objects to See Also as \code{\link{help}}, ~~~
%% }
\examples{
\donttest{
    msg <- message_card(text  = textutils::HTMLencode("This is the text."),
                        title = textutils::HTMLencode("A heading"))

    wh <- "http://testing.webhook.office.com/728afea0-0026-4eee-bf2d-77aa1406d578"
    send_message_card(wh = wh, msg = msg)
}
}
