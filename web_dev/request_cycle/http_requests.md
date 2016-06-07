# How the Web Works

Release 0: Research Web Servers

1. What are some common HTTP status codes?

Here is a list of common HTTP status codes:
* 1xx Informational
  100 Continue - Server has received the request headers and client should proceed to send the request body.
  101 Switching Protocols 
  102 Processing 

* 2xx Success
  200 OK - Response for successful HTTP requests.
  201 Created - Request has been fulfilled, resulting in the creation of a new resource.

* 3xx Redirection
  300 Multiple Choices - Indicates multiple options for the resource from which the client may choose. Could represent multiple format options with various extensions.

* 4xx Client Error
  400 Bad Request - Server cannot process the request due to a client side error
  403 Forbidden - Request is valid, but the server is not responding to it. 
  404 Not Found - Requested resource could not be found.

* 5xx Server Error - Server failed to fulfill what was apparently a valid request
  500 Internal Server Error - Generic error message given when an unexpected situation was encountered and there is no other suitable error messeage.

2. What is the difference between a GET request and a POST request? When might each be used?

GET requests data from a specified resource
POST submits data to be processed to a specified resource

GET requests:
* Can be cached
* Remain in the browser history
* Can be bookmarked
* Should NEVER be used when dealing with sensitive data
* Should only be used to retrieve data

POST requests:
* Never cached
* Do not remain in browser history
* Cannot be bookmarked

Essentially, a GET request asks for information and a POST request submits information.

4. What is a cookie? How does it relate to HTTP requests?

A cookie is a small piece of data that is sent from a website and stored within the user's web browser while the user is browsing. Cookies are helpful for remembering certain types of information such as whether a user is logged in, the contents of a shopping cart, and they can store other information such as passwords, addresses, phone numbers, etc. 

Cookies are plain text, not executable code. A web server specifies a cookie to be stored by sending an HTTP header called `Set-Cookie` which is formatted as a string. 
