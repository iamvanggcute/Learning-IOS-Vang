import UIKit
func validateSKU(_ sku: String?){
    guard let sku = sku else {
        print("khoong hop le")
        return
    }
    guard  sku.isEmpty else {
        print("Rong")
        return
    }
    guard sku.hasPrefix( "SKU_" ) else {
        print("SKU khong hop le")
        return
    }
    print("SKU hop le")
}
func validatePrice(_ text: String?){
    guard let text = text else {
        print("khong hop le")
        return
    }
    guard let text = Double(text) else {
        print("Gias Khong Hop Le")
        return
    }
    guard text <= 0 else {
        print("Gia phai Lon Hon ")
        return
    }
    print("Gia hop le")
}
func calcTotal(priceText: String?, quantityText: String?){
    guard let priceText = priceText, let price = Double(priceText) else {
        print("khong chuyen duoc")
        return
    }
    guard let quantityText = quantityText, let quantity = Double(quantityText) else {
        print("khon chuyen duoc")
        return
    }
    guard  quantity <= 0 else {
        print("So Luong Khong Hoop Le")
        return
    }
    print("Thanh tien hop le")
}
struct Product {
 let sku: String
 let name: String
 let price: Double
}
func createProduct(
 sku: String?,
 name: String?,
 priceText: String?
) -> Product? {
    guard let sku = sku , let name = name , let priceText = priceText else {
        print("Khong Hop Le")
        return nil
    }
    guard sku.isEmpty , name.isEmpty , priceText.isEmpty else {
        print("rong")
        return nil
    }
    guard sku.hasPrefix("SKU_") else{
        print("Loi")
        return nil
    }
    guard let price = Double(priceText) else {
        print("Gia Khong Hop Le")
        return nil
    }
    
    guard price > 0 else {
        print("Gia Lon Hon 0")
        return nil
    }
    
    return Product(sku: sku, name: name, price: price)
}
func increase(_ value: inout Int){
    value  += 1
    print(value)
}
var a = 5
increase(&a)
print("a =:" , a )
var cart: [String: Int] = ["SKU-001": 1]
let priceList: [String: Double] = [
 "SKU-001":  120000,
 "SKU-002": 99000
]
func addToCart(
 sku: String?,
 quantityText: String?,
 cart: inout [String: Int],
 priceList: [String: Double]
){
    guard let sku = sku , let quantityText = quantityText else {
       print("khong hop le")
        return
    }
    guard let price = priceList[sku] else {
        print("san pham khong ton tai")
        return
    }
    guard let cartQuantity = Int(quantityText) else {
        print("so luong khong hop le")
        return
    }
    cart[sku, default: 0] += cartQuantity
    print("Da them \(cartQuantity) san pham \(sku) vao gio hang")
}
func processAddToCart(
 sku: String?,
 name: String?,
 priceText: String?,
 quantityText: String?,
 cart: inout [String: Int]
){
    guard let skt = sku ,let name = name , let  priceText = priceText ,let quantityText = quantityText  else{
        print("Khong Hop Le")
        return
    }
    guard sku!.isEmpty , name.isEmpty , priceText.isEmpty , quantityText.isEmpty else {
        print("Rong")
        return
    }
    guard let price = Double(priceText) else {
        print("khong dung du lieu")
        return
    }
    guard let quantity = Int(quantityText) else {
        print("khong dung du lieu")
        return
    }
    let Product = Product(sku: skt, name: name, price: price)
    cart[Product.sku, default: 0] += quantity
}




