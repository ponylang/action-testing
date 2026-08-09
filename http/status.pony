trait val Status
  """
  An HTTP response status code with its reason phrase.
  """
  fun apply(): U16
    """
    The numeric status code.
    """

  fun string(): String
    """
    The status code and reason phrase, e.g. `"200 OK"`.
    """

primitive StatusContinue is Status
  """
  100: the server received the request headers and the client should send
  the body.
  """
  fun apply(): U16 => 100
  fun string(): String => "100 Continue"

primitive StatusSwitchingProtocols is Status
  """
  101: the server is switching to the protocol requested by the client.
  """
  fun apply(): U16 => 101
  fun string(): String => "101 Switching Protocols"

primitive StatusOK is Status
  """
  200: the request succeeded.
  """
  fun apply(): U16 => 200
  fun string(): String => "200 OK"

primitive StatusCreated is Status
  """
  201: the request succeeded and a new resource was created.
  """
  fun apply(): U16 => 201
  fun string(): String => "201 Created"

primitive StatusAccepted is Status
  """
  202: the request was accepted for processing but processing is not
  complete.
  """
  fun apply(): U16 => 202
  fun string(): String => "202 Accepted"

primitive StatusNonAuthoritativeInfo is Status
  """
  203: the response contains modified metadata from a third-party copy.
  """
  fun apply(): U16 => 203
  fun string(): String => "203 Non-Authoritative Information"

primitive StatusNoContent is Status
  """
  204: the request succeeded but there is no content to send.
  """
  fun apply(): U16 => 204
  fun string(): String => "204 No Content"

primitive StatusResetContent is Status
  """
  205: the client should reset the document view.
  """
  fun apply(): U16 => 205
  fun string(): String => "205 Reset Content"

primitive StatusPartialContent is Status
  """
  206: the server is delivering part of the resource due to a range
  request.
  """
  fun apply(): U16 => 206
  fun string(): String => "206 Partial Content"

primitive StatusMultipleChoices is Status
  """
  300: the request has more than one possible response.
  """
  fun apply(): U16 => 300
  fun string(): String => "300 Multiple Choices"

primitive StatusMovedPermanently is Status
  """
  301: the resource has been permanently moved to a new URL.
  """
  fun apply(): U16 => 301
  fun string(): String => "301 Moved Permanently"

primitive StatusFound is Status
  """
  302: the resource is temporarily at a different URL.
  """
  fun apply(): U16 => 302
  fun string(): String => "302 Found"

primitive StatusSeeOther is Status
  """
  303: the response to the request is at another URL, retrieved with GET.
  """
  fun apply(): U16 => 303
  fun string(): String => "303 See Other"

primitive StatusNotModified is Status
  """
  304: the resource has not been modified since the version specified by
  the request headers.
  """
  fun apply(): U16 => 304
  fun string(): String => "304 Not Modified"

primitive StatusUseProxy is Status
  """
  305: the requested resource must be accessed through the specified
  proxy.
  """
  fun apply(): U16 => 305
  fun string(): String => "305 Use Proxy"

primitive StatusTemporaryRedirect is Status
  """
  307: the resource is temporarily at a different URL; the client should
  use the same method.
  """
  fun apply(): U16 => 307
  fun string(): String => "307 Temporary Redirect"

primitive StatusBadRequest is Status
  """
  400: the server cannot process the request due to a client error.
  """
  fun apply(): U16 => 400
  fun string(): String => "400 Bad Request"

primitive StatusUnauthorized is Status
  """
  401: the request requires authentication.
  """
  fun apply(): U16 => 401
  fun string(): String => "401 Unauthorized"

primitive StatusPaymentRequired is Status
  """
  402: reserved for future use.
  """
  fun apply(): U16 => 402
  fun string(): String => "402 Payment Required"

primitive StatusForbidden is Status
  """
  403: the server understood the request but refuses to authorize it.
  """
  fun apply(): U16 => 403
  fun string(): String => "403 Forbidden"

primitive StatusNotFound is Status
  """
  404: the server cannot find the requested resource.
  """
  fun apply(): U16 => 404
  fun string(): String => "404 Not Found"

primitive StatusMethodNotAllowed is Status
  """
  405: the request method is not supported for the target resource.
  """
  fun apply(): U16 => 405
  fun string(): String => "405 Method Not Allowed"

primitive StatusNotAcceptable is Status
  """
  406: the server cannot produce a response matching the Accept headers.
  """
  fun apply(): U16 => 406
  fun string(): String => "406 Not Acceptable"

primitive StatusProxyAuthRequired is Status
  """
  407: the client must authenticate with the proxy.
  """
  fun apply(): U16 => 407
  fun string(): String => "407 Proxy Authentication Required"

primitive StatusRequestTimeout is Status
  """
  408: the server timed out waiting for the request.
  """
  fun apply(): U16 => 408
  fun string(): String => "408 Request Timeout"

primitive StatusConflict is Status
  """
  409: the request conflicts with the current state of the resource.
  """
  fun apply(): U16 => 409
  fun string(): String => "409 Conflict"

primitive StatusGone is Status
  """
  410: the resource is no longer available and has no forwarding address.
  """
  fun apply(): U16 => 410
  fun string(): String => "410 Gone"

primitive StatusLengthRequired is Status
  """
  411: the server requires a Content-Length header.
  """
  fun apply(): U16 => 411
  fun string(): String => "411 Length Required"

primitive StatusPreconditionFailed is Status
  """
  412: a precondition in the request headers evaluated to false.
  """
  fun apply(): U16 => 412
  fun string(): String => "412 Precondition Failed"

primitive StatusRequestEntityTooLarge is Status
  """
  413: the request payload exceeds the server's size limit.
  """
  fun apply(): U16 => 413
  fun string(): String => "413 Request Entity Too Large"

primitive StatusRequestURITooLong is Status
  """
  414: the request URI exceeds the server's length limit.
  """
  fun apply(): U16 => 414
  fun string(): String => "414 Request URI Too Long"

primitive StatusUnsupportedMediaType is Status
  """
  415: the request payload format is not supported.
  """
  fun apply(): U16 => 415
  fun string(): String => "415 Unsupported Media Type"

primitive StatusRequestedRangeNotSatisfiable is Status
  """
  416: the range specified in the request cannot be fulfilled.
  """
  fun apply(): U16 => 416
  fun string(): String => "416 Requested Range Not Satisfiable"

primitive StatusExpectationFailed is Status
  """
  417: the server cannot meet the requirements of the Expect header.
  """
  fun apply(): U16 => 417
  fun string(): String => "417 Expectation Failed"

primitive StatusTeapot is Status
  """
  418: the server refuses to brew coffee because it is a teapot
  (RFC 2324).
  """
  fun apply(): U16 => 418
  fun string(): String => "418 I'm a teapot"

primitive StatusPreconditionRequired is Status
  """
  428: the server requires the request to be conditional.
  """
  fun apply(): U16 => 428
  fun string(): String => "428 Precondition Required"

primitive StatusTooManyRequests is Status
  """
  429: the client has sent too many requests in a given time period.
  """
  fun apply(): U16 => 429
  fun string(): String => "429 Too Many Requests"

primitive StatusRequestHeaderFieldsTooLarge is Status
  """
  431: the request headers exceed the server's size limit.
  """
  fun apply(): U16 => 431
  fun string(): String => "431 Request Header Fields Too Large"

primitive StatusUnavailableForLegalReasons is Status
  """
  451: the resource is unavailable due to a legal demand.
  """
  fun apply(): U16 => 451
  fun string(): String => "451 Unavailable For Legal Reasons"

primitive StatusInternalServerError is Status
  """
  500: the server encountered an unexpected condition.
  """
  fun apply(): U16 => 500
  fun string(): String => "500 Internal Server Error"

primitive StatusNotImplemented is Status
  """
  501: the server does not support the request method.
  """
  fun apply(): U16 => 501
  fun string(): String => "501 Not Implemented"

primitive StatusBadGateway is Status
  """
  502: the server received an invalid response from an upstream server.
  """
  fun apply(): U16 => 502
  fun string(): String => "502 Bad Gateway"

primitive StatusServiceUnavailable is Status
  """
  503: the server is temporarily unable to handle the request.
  """
  fun apply(): U16 => 503
  fun string(): String => "503 Service Unavailable"

primitive StatusGatewayTimeout is Status
  """
  504: the server did not receive a timely response from an upstream
  server.
  """
  fun apply(): U16 => 504
  fun string(): String => "504 Gateway Timeout"

primitive StatusHTTPVersionNotSupported is Status
  """
  505: the server does not support the HTTP version used in the request.
  """
  fun apply(): U16 => 505
  fun string(): String => "505 HTTP Version Not Supported"

primitive StatusNetworkAuthenticationRequired is Status
  """
  511: the client must authenticate to gain network access.
  """
  fun apply(): U16 => 511
  fun string(): String => "511 Network Authentication Required"
