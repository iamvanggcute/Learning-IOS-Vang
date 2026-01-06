import Foundation
enum LoadState {
    case idle
    case loading
    case success(dataCount: Int)
    case empty
    case failure(errorMessage: String)
}
var dataA: Int = 0
@MainActor func handleLoadState(state: LoadState) {
    switch state {
    case .idle :
        print("Chua bat dau tai")
    case .loading :
        print("Dang loading du lieu")
    case .success(let data) :
        print("tai thanh cong du lieu \(data)")
        dataA = data
    case .empty :
        print(" Rong")
    case .failure(let message) :
        print("Loi Vi \(message)")
    }
}
handleLoadState(state: .success(dataCount: 4))
print(dataA)

//handleLoadState(state: .empty)
enum LoginError {
    case emptyUsername
    case emptyPassword
    case passwordTooShort
    case invalidCredential
}
enum LoginResult {
    case success(message: String)
    case failure(erorr : LoginError)
}
func login(username : String? , password : String?) -> LoginResult {
    guard let username = username else { return .failure(erorr: .emptyUsername) }
    guard let password = password else { return .failure(erorr: .emptyPassword)}
    guard  password.count > 6 else {return .failure(erorr: .passwordTooShort)}
    return .success(message: "Thanh Cong")
}
    

func loginErorrMessage(error : LoginError) {
    switch error {
    case .emptyUsername:
        print("Username Rong")
    case .emptyPassword:
        print("Password Rong")
    case .passwordTooShort:
        print("Mat Khau Qua Ngan")
    case .invalidCredential:
        print("Loi DInh Dang")
    }
}
let status = login(username: nil, password: "aaaaaaaaaa")
switch status {
case .success(let message):
    print(message)
case .failure(let error):
    loginErorrMessage(error: error)
}
print(login(username: nil, password: "12"))

enum ShippingMethod {
    case standard
    case express
    case sameDay(distanceKm : Int)
}
//func calculateShippingFree(method : ShippingMethod , orderAmount: Double) -> Double {
//    switch method {
//    case .standard:
//        return orderAmount >= 500.000 ? 0 : 30.000
//    case .express :
//       return orderAmount >= 500.000 ? 0 : 50.000
//    case .sameDay(let distanceKm):
//        return Double(distanceKm) * 5.000
//    }
//}
func calculateShippingFee(method: ShippingMethod, orderAmount: Double) -> Double {
    
    // Miễn phí vận chuyển cho đơn hàng giá trị lớn
    if orderAmount >= 10000000 {
        return 0
    }
    
    switch method {
    case .standard:
        return 20000
        
    case .express:
        return 40000
        
    case .sameDay(let distanceKm):
        if distanceKm <= 5 {
            return 50000
        } else {
            let extraDistance = distanceKm - 5
            return 50000 + Double(extraDistance) * 5_000 // SAU 5KM Thì cứ 1 km thì 5k/km
        }
    }
}
enum OrderStatus {
    case created
    case paid
    case shipping
    case delivered
    case cancelled(reason : String)
}
func orderStatusDescription(status : OrderStatus){
    switch status {
    case .created:
        print("Da Tao")
    case .paid :
        print("Da Thanh Toan")
    case .shipping :
        print("Dang Van CHuyen")
    case .delivered :
        print("Da Giao Hang")
    case .cancelled(let reason ):
        print(reason)
    }
}
enum Route {
    case home
    case productDetail(producId : Int)
    case cart
    case checkout(isLoggedIn : Bool)
    case login
    
}
func resolveRoute(route : Route){
    switch route {
    case .home :
        print("Dang O Trang Chu")
    case .productDetail(let producid):
        print(producid)
    case .cart:
        print("cart")
    case .checkout(let isLoggedId):
        print(isLoggedId)
    case .login :
        print("Moi Ban Dang Nhap")
        
        
    }
}

enum AccessState: String {
    case underAge = "Duoi 18 tuoi"
    case noTicket = "Khong co ve"
    case allowed = "Hop le"
}
func checkAccess(age : Int , hasTicket : Bool) -> String{
    if age <= 18 {
        return AccessState.underAge.rawValue
    }
    
    if !hasTicket {
        return AccessState.noTicket.rawValue
    }
    return AccessState.allowed.rawValue
}

print(checkAccess(age: 19, hasTicket: false))
