//
//  OrderUiStateMapper.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 16/1/26.
//
func mapOrderStatusToUiState (_ status : OrderStatus) -> UiState {
    switch status {
    case .orderEmpty :
        return UiState (screen: .orderList, status: "error", message: status.message)
    case .orderValid:
        return UiState (screen: .orderDetail, status: "success", message: status.message)
    }
}
