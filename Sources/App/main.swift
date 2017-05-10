import Vapor
import VaporPostgreSQL

let drop = Droplet()

try drop.addProvider(VaporPostgreSQL.Provider.self)

drop.get { request in
    guard let db = drop.database?.driver as? PostgreSQLDriver else {
        return "No db connection"
    }
    let version = try db.raw("SELECT version()")
    return try JSON(node: ["version": version])
}

drop.run()
