import Foundation

struct Order {
    let id : String
    var amount : Double
}
enum PaymentStatus {
    case success
    case failed  (reason : String)
}
protocol PaymentMethod {
    var name : String { get}
    func pay(order: Order) -> PaymentStatus
    
}
extension PaymentMethod  {
    func PrintPay (for order : Order) {
        var status = pay(order: <#T##Order#>)
        switch status {
        case .success :
            print("[\(name)] Order \(order.id) - PAID SUCCESS (amount: \(order.amount))")
        case .failed(let reason):
            print("[\(name)] Order \(order.id) - PAID FAILED (amount: \(order.amount)) | reason: \(reason)")
        }
    }
}
struct CashPayment : PaymentMethod {
    let name: String = " Cash "
    func pay(order: Order) -> PaymentStatus {
        return  .success
        
    }
}
struct CardPayment : PaymentMethod {
    let limit : Double
    var name : String = " Card"
    func pay(order: Order) -> PaymentStatus {
        guard order.amount <= limit else {
            return .failed(reason: "Amount exceeds card limit (\(limit))")
        }
        return .success
    }
}
struct ViTraSau : PaymentMethod {
    var type : String?
    let HanMuc : Double
    var name: String
    func pay(order: Order) -> PaymentStatus {
        guard order.amount <= HanMuc else {
            return .failed(reason: "Amonut exceeds card limit (\(HanMuc))")
        }
        return .success
    }
}
let orderA = Order(id: "A001", amount: 120)
let orderB = Order(id: "B001", amount: 600)
let cash = CashPayment()
let card = CardPayment(limit: 500)
let Vitrasau = ViTraSau(HanMuc: 500, name: "Momo")


struct Message {
    var name : String
    var body : String
}
protocol Notihfiable {
    var channelName : String { get}
    func send (_ message : Message) -> Bool
    
}
extension Notihfiable {
    func PrintNotifiable ( for message : Message) {
       if send(message) {
            print("thanh cong ")
           print("Teen : \(message.name)")
           print("Noi Dung : \(message.body)")
       } else {
           print("Khong Thanh Cong")
       }
    }
    
}
struct EmailNotifiable : Notihfiable {
    var channelName : String = " Email"
    func send (_ message : Message) -> Bool {
        return !message.body.isEmpty
    }
    
}
struct SMSNotihfiable : Notihfiable {
    var channelName: String = "SMS"
    func send(_ message: Message) -> Bool {
        return !message.body.isEmpty
    }
}
struct ConsoleNotihfiable : Notihfiable {
    var channelName: String = "Console"
    func send(_ message: Message) -> Bool {
        return !message.body.isEmpty
    }
}
let Ktr = Message(name: "vang", body: "Helo")
let email = EmailNotifiable()
let SMS = SMSNotihfiable(channelName: "SMS")
let console = ConsoleNotihfiable(channelName: "console")
email.PrintNotifiable(for : Ktr)
SMS.PrintNotifiable(for: Ktr)
console.PrintNotifiable(for: Ktr)


struct Product  {
    let name : String
    var price : Double
}

protocol Pricable {
    var price : Double {get}
    
}
extension Product: Pricable {}
extension Pricable {
    func giamGia (phantram : Double) -> Double {
        guard phantram >= 0 &&  phantram <= 100 else {
            return price
        }
        return price * (1 - phantram / 100)
    }
}
func TinhTong (danhsach : [Pricable]) -> Double {
    var sum : Double = 0
    for tong in danhsach{
      sum += tong.price
    }
    return sum
}
extension Array where Element == Product{
    func TimMonDatNhat () ->Product? {
        guard let Cao = self.first else  {
            return nil
        }
        var CaoNhat = Cao
        for product in self {
            if product.price > CaoNhat.price {
                CaoNhat = product
            }
        }
        return CaoNhat
    }
}
let products = [
    Product(name: "iPhone", price: 1000),
    Product(name: "MacBook", price: 2000),
    Product(name: "iPad", price: 1500)
]
for inra in products {
    let afterDiscount = inra.giamGia(phantram: 10)
    print("\(inra.name): \(afterDiscount)")
}
if let maxProduct = products.TimMonDatNhat() {
    print("Món đắt nhất:", maxProduct.name, "-", maxProduct.price)
} else {
    print("Danh sách rỗng")
}
let tong = TinhTong(danhsach : products)
print("Tổng tiền:", tong)




