//
//  calculateTotalPriceLogic.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 15/1/26.
//
func calculateTotalPrice(
 products: [Product],
 onResult: (TotalPriceStatus, Double?) -> Void
) {
    let KtraAm = products.contains{ $0.price < 0}
    if KtraAm {
        onResult(.priceInvalid , nil)
        return
    }
    let prices = products.map{$0.price }
    let total = prices.reduce(0) { $0 + $1 }
    return onResult(.priceOK , total )
}
