//
//  UiStateMapper.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 16/1/26.
//
func mapUserStatusToUiState (_ status : UserStatus ) -> UiState {
    switch status {
    case .userInactive, .userNotFound :
        return UiState (screen: .login, status: "error", message: status.message)
    case .userActive:
        return UiState (screen: .orderList, status: "success", message: status.message)
    }
}
