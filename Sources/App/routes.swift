import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    // Example of configuring a controller
    router.post(Acronym.self, at: "api", "acronyms") { req, acronym -> Future<Acronym> in
        return acronym.save(on: req)
    }
}
