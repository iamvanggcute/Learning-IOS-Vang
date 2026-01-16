//
//  OrderStatus.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 14/1/26.
//
enum OrderStatus {
  case  orderEmpty
    case orderValid
    var message : String {
        switch self {
        case .orderEmpty:
            return "Don Hang Trong"
        case .orderValid:
            return "Don Hang Hop Le"
        }
    }
}
