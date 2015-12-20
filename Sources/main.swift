#if os(Linux)
	import Glibc
#else
	import Darwin
#endif
	import Curassow
	import Inquiline

serve { request in
	if request.path == "/joke" {
		let joke = Joke.tell()
		return Response(.Ok, contentType: "text/plain", body: joke.content)
	} else {
		return Response(.NotFound, contentType: "text/plain", body: "Not Found")
	}
}
