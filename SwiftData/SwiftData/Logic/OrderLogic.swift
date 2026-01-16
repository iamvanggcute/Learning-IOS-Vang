import Foundation
//  OrderLogic.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 15/1/26.
//
func validateOrder(order: Order?) -> OrderStatus {
    //    guard let order = order else {
    //        return .orderEmpty
    //    }
    //    guard !order.products.isEmpty else {
    //        return .orderEmpty
    //    }
    //    return .orderValid
    order.map { orders in
        if orders.products.isEmpty {
            return .orderEmpty
        } else {
            return .orderValid
        }
    } ?? .orderEmpty
}
