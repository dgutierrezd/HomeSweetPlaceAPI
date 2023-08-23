import Fluent
import Vapor

final class User: Model, Content {
    static let schema = "users"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "username")
    var username: String
    
    @Field(key: "password")
    var password: String
    
    @Field(key: "email")
    var email: String
    
    @Field(key: "phone")
    var phone: Int

    init() { }

    init(id: UUID? = nil, username: String, password: String, email: String, phone: Int) {
        self.id = id
        self.username = username
        self.password = password
        self.email = email
        self.phone = phone
    }
}
