send_message_card <- function(wh, msg, ...) {
    res <- httr::POST(url = wh,
                      httr::add_headers("Content-Type"="application/json"),
                      body = msg,
                      timeout = 3,
                      encode = 'json',
                      ...
                      )

    if (res$status_code == 200)
        TRUE
    else
        res
}

message_card <- function(text, title, ...) {
    msg <-
'{
  "@context": "https://schema.org/extensions",
  "@type": "MessageCard",
  "themeColor": "0072C6",
  "title": "{title}",
  "text": "{text}"
}'
    textutils::fill_in(msg,
                       text = text,
                       title = title)
}
