import Vapor
import FluentSQLite

final class Acronym: SQLiteModel {
    
    var id: Int?
    var short: String
    var long: String
    
    init(short: String, long: String) {
        self.short = short
        self.long = long
    }
}

extension Acronym: Content {}
extension Acronym: Migration {}
