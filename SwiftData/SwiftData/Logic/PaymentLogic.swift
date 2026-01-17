//
//  PaymentLogic.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 15/1/26.
//
func payment(totalPrice: Double?) -> PaymentStatus {
   // switch totalPrice {
        //    case nil:
        //        return .paymentFailed
        //    case let price? where price <= 0:
        //        return .paymentFailed
        //    case let price? where price <= 100000000 :
        //        return .paymentSuccess
        //    case let price?:
        //        return .paymentFailed
        //    }
        guard let price = totalPrice else {
            return .paymentInvalid
        }
        
        switch price {
        case ...0:
            return .paymentInvalid
            
        case 1...1_000_000:
            return .paymentSuccess
            
        default:
            return .paymentFailed
        }
    }

