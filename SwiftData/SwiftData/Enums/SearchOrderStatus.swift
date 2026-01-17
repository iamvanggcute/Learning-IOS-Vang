//
//  SearchOrderStatus.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 15/1/26.
//

enum SearchOrderStatus {
    case emptyKeyword
    case found
    case notFound
    var message : String {
        switch self {
        case .emptyKeyword:
            return "Tu Khoa Trong"
        case .found:
            return "Da Tim Thay"
        case .notFound :
            return "Khong Tim Thay"
        }
    }

}
