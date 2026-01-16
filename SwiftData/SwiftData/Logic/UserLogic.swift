//
//  UserLogic.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 15/1/26.
//

func checkUserStatus(users: [User], userId: Int) -> UserStatus {
    guard  let users = users.first(where: { $0.id == userId}) else {
        return .userNotFound
    }
    guard users.isActive else {
        return .userActive
    }
    return .userActive
}
