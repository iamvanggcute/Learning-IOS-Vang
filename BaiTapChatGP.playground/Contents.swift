import UIKit
struct Account {
    let id : Int
    let username : String?
    let password : String?
    let email : String?
    let phone : String?
    let createdAt : Int?
    func KiemTraEmail() -> Bool {
        guard let email = email else {
            return false
        }
        return email.contains("@")
    }
    func KiemAccount() -> Bool {
        guard let username = username, username.isEmpty else {
            return false
        }
        guard let password = password, password.count >= 6 else {
            return false
        }
        guard KiemTraEmail() else {
            return false
        }
        return true
        }
       
            
    }
var accounts: [Account] = [
    Account (id : 1 , username: "vangcute123" , password: "123456v" , email: nil , phone: "01234737" , createdAt: 12398),
    Account (id : 2 , username: "vangcute123" , password: "123456v" , email: "vavavhgamil.com" , phone: "01234737" , createdAt: 123478),
    Account (id : 3 , username: "vangcute123" , password: "123456v" , email: "vavavh@gamil.com" , phone: "01234737" , createdAt: 12345)
]
for aaccount in accounts {
//   print("Username: \(Account.username ?? "Khong Co")")
//    if Account.KiemTraEmail() {
//        print("Email : \(Account.email)")
//    } else {
//        print("Email Khong Dung")
//    }
//    print("Phone : \(Account.phone ?? "Khong Co")")
//    print("_______")
    if aaccount.KiemAccount() {
        print("Username : \(aaccount.username!)")
        print ("Email : \(aaccount.email!)")
        print ("Phone : \(aaccount.phone ?? "khong co")")
        print ("-----------")
    }
}
    
let SapXepTheoAt = accounts.sorted {
    ($0.createdAt ?? Int.max) < ($1.createdAt ?? Int.max)
}
