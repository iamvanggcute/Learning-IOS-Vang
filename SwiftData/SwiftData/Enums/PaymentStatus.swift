//
//  PaymentStatus.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 15/1/26.
//
enum PaymentStatus {
    case paymentSuccess
    case paymentFailed
    case paymentInvalid
    var message : String {
        switch self {
        case .paymentSuccess:
            return "Thanh Toan Thanh Cong"
        case .paymentFailed:
            return "Thanh Toan That Bai"
        case .paymentInvalid:
            return "Thanh Toan Khong Hop Le"
        }
    }
}
