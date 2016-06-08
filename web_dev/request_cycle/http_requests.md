## What are some common HTTP status codes?

### For quick reference:

> The class of a status code can be quickly identified by its first digit:
> 1xx: Informational.
> 2xx: Success.
> 3xx: Redirection.
> 4xx: Client Error.
> 5xx: Server Error.

* 200 OK
  * The request has succeeded.
* 300 Multiple Choices
  * The requested resources has multiple choices and cannot be resolved into one. For example there are multiple versions of a page depending on which language is wanted.
* 301 Moved Permanently
  * The requested resource has been moved permanently to a different Uniform Resource Identifier and any future references to this resources should use one of the returned URIs.
* 302 Found
  * The requested resource resides temporarily under a different URI. Since the redirection might be altered on occasion, the client SHOULD continue to use the Request-URI for future requests.
* 304 Not Modified
  * To update mostly meta-information contained in the header fields, not the body of the page. The purpose of this feature is to allow efficient updates of local cache information (including relevant meta information) without requiring the overhead of multiple HTTP requests (e.g. a HEAD followed by a GET) and minimizing the transmittal of information already known by the requesting client (usually a caching proxy).
* 307 Temporary Redirect
  * The requested resources currently resides temporarily under a difference Uniform Resource Identifier. Continue to use that URI.
* 400 Bad Request
  * The request could not be understood by the server due to malformed syntax. The client SHOULD NOT repeat the request without modifications.
* 401 Unauthorized
  * The request requires user authentication. The response MUST include a WWW-Authenticate header field containing a challenge applicable to the requested resource.
* 403 Forbidden
  * The server understood the request, but is refusing to fulfill it. Authorization will not help and the request SHOULD NOT be repeated.
* 404 Not Found
  * The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent.
* 410 Gone
  * The requested resource is no longer available at the server and no forwarding address is known. This condition is expected to be considered permanent. Clients with link editing capabilities SHOULD delete references to the Request-URI after user approval.
  If the server does not know, or has no facility to determine, whether or not the condition is permanent, the status code 404 Not Found SHOULD be used instead. This response is cacheable unless indicated otherwise.
* 500 Internal Server Error
  * The server encountered an unexpected condition which prevented it from fulfilling the request.
* 501 Not Implemented
  * The server does not support the functionality required to fulfill the request. This is the appropriate response when the server does not recognize the request method and is not capable of supporting it for any resource.
* 503 Service Unavailable
  * Your web server is unable to handle your HTTP request at the time. There are a myriad of reasons why this can occur but the most common are:
    * server crash
    * server maintenance
    * server overload
    * server maliciously being attacked
    * a website has used up its allotted bandwidth
    * server may be forbidden to return the requested document
  * This is usually a temporary condition. Since you are getting a return code, part of the server is working. The web people have made the server return this code until they fix the problem.
  If you do not get service back soon, contact your web host as they would know the best. Some web hosts have server status pages you can check.
* 550 Permission denied
  * The server is stating the account you have currently logged in as does not have permission to perform the action you are attempting. You may be trying to upload to the wrong directory or trying to delete a file.

## What is the difference between a GET request and a POST request? When might each be used?

A **GET** request is used when asking the server for information, but without the intention of making any changes. A GET request also can only pass information to the server using the URL, which limits the amount and type of information passed to the server. GET is said to be *idempotent*, meaning that it will do the same thing each time it's called, since no changes are occurring.

A **POST** request can do what a GET request can do, but also has the ability to send information to the server for the purpose of modifying information (example: updating a form).

## Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

> A cookie is a small piece of data that is sent from a website and stored in the user's browser. The purpose of the cookie is to record and transmit the state of the user's experience of the website to the website's server. Doing so enables the server to understand for example: 
    * whether the user is logged in
    * has clicked on various links
    * or added items to their shopping cart
