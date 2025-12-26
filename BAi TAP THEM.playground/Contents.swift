import UIKit
struct Person {
    let id: Int
    let name: String?
    let email: String?
    let phone: String?
    let createdAt: Int?
    
    func KiemTraEmail() -> Bool {
        guard let email =  email else { return false
        }
        return email.contains("@")
        }
    }
    
var perSon : [ Person ] = [
    Person (id: 1, name: "A", email: "a@a.com", phone: "123456789", createdAt: 123456789),
    Person (id: 2, name: "B", email: "b@b.com", phone: "123456789", createdAt: 123456789),
    Person(id: 3, name: "C", email: nil, phone: nil, createdAt: nil)
]
for Person in perSon {
    if Person.KiemTraEmail() {
        print("Email: \(Person.email!)")
    } else {
        print("Email không hợp lệ hoặc không có")
    }
    
    print("Phone: \(Person.phone ?? "Không có")")
    print("------")
}
let SapXep = perSon.sorted {
    ($0.createdAt ?? Int.max) < ($1.createdAt ?? Int.max)
}




