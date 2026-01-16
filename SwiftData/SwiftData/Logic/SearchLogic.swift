//
//  SearchLogic.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 15/1/26.
//

func searchOrderByProductName(
keyword: String?,
 orders: [Order]
) -> SearchOrderStatus {
    guard let keyword = keyword else {
        return .emptyKeyword
    }
    let search = keyword.lowercased()
    for order in orders {
        for product in order.products {
            if product.name.lowercased().contains(search) {
                return .found
            }
        }
    }
    return .notFound
}
