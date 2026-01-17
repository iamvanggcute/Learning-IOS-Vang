//
//  TotalPriceStatus.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 15/1/26.
//
enum TotalPriceStatus {
   case priceInvalid
    case priceOK
    var message : String {
        switch self {
        case .priceInvalid :
            return "Gia Khong Hop Le"
        case .priceOK :
            return "Gia Hop Le"
        }
    }
}
