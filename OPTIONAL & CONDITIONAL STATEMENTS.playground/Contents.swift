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



