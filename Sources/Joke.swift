#if os(Linux)
	import Glibc
#else
	import Darwin
#endif

// Array samle from http://stackoverflow.com/a/24101606
extension Array {
	func sample() -> Element {
		let randomIndex = Int(rand()) % count
		return self[randomIndex]
	}
}

struct Joke {
	let content: String
	static let builtinJokes = [
		"First: Wanted: Swift developer with 5 years experience.",
		"Second: Something...Taylor Swift related?",
		"Third: Keep these jokes coming.",
		"Fourth: Swift: Still not Lisp.",
		"boop",
	]

init(_ content: String) {
	self.content = content
}

// Tells one of our built in jokes
static func tell() -> Joke {
	let joke = Joke(Joke.builtinJokes.sample())
	return joke
	}
}
