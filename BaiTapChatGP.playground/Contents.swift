import UIKit
struct Account {
    let id : Int
    let username : String?
    let password : String?
    let email : String?
    let phone : String?
    let createdAt : Int?
    func KiemTraEmail() -> String? {
        guard let email = email, email.contains("@") else {
            return nil
        }
        return email
    }

    func KiemAccount() -> (username: String, password: String, email: String , phone: String)? {
        guard let username = username, !username.isEmpty else { return nil }
        guard let password = password, password.count >= 6 else { return nil }
        guard let email = KiemTraEmail() else { return nil }
        guard let phone = phone else { return nil }

        return (username, password, email , phone)
    }

            
    }
var accounts: [Account] = [
    Account (id : 1 , username: "vangcute123" , password: "123456v" , email: nil , phone: nil , createdAt: 12398),
    Account (id : 2 , username: "vangcute123" , password: "123456v" , email: "vavavhgamil.com" , phone: "01234737" , createdAt: 123478),
    Account (id : 3 , username: "vangcute123" , password: "123456v" , email: "vavavh@gamil.com" , phone: "01234737" , createdAt: 12345)
]
for aaccount in accounts {
//   if let xuAt = aaccount.KiemAccount() {
//       print("Username: \(xuAt.username)")
//       print("Email : \(xuAt.email)")
//       print(" Phone : \(xuAt.phone ?? "Không có số điện thoại")")
//        
//   } else {
//       print("Khong Hop Le")
//   }
    print("Userame : \(aaccount.username ?? "Khong Ton Tai")")
    if let xuAt = aaccount.KiemAccount() {
        print("Email : \(xuAt.email)")
    } else {
        print("Email Khong Hop Le")
    }
    print("Phone : \(aaccount.phone ?? " Khong co so dien thoai")")
    print("____________________________")
}
    
let SapXepTheoAt = accounts.sorted {
    ($0.createdAt ?? Int.max) < ($1.createdAt ?? Int.max)
}
