import UIKit
struct Person {
    let id: Int
    let name: String?
    let email: String?
    let phone: String?
    let createdAt: Int?
    
    func KiemTraEmail() -> String? {
        guard let email = email , email.contains("@") else {
            return nil
        }
        return (email)
    }
}
    
var perSon : [ Person ] = [
    Person (id: 1, name: "A", email: "aa.com", phone: "123456789", createdAt: 123456789),
    Person (id: 2, name: "B", email: "b@b.com", phone: "123456789", createdAt: 123456789),
    Person(id: 3, name: "C", email: nil, phone: nil, createdAt: nil)
]
for Person in perSon {
    if let xuAt = Person.KiemTraEmail(){
        print("Email : \(xuAt)")
    } else { print("Email Khong ton tai")}
    print("Phone : \(Person.phone ?? " Phone Khong Ton Tai ")")
    print("___________")
}
let SapXep = perSon.sorted {
    ($0.createdAt ?? Int.max) < ($1.createdAt ?? Int.max)
}




