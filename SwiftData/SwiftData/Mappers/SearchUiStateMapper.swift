//
//  SearchUiStateMapper.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 16/1/26.
//
func mapSearchOrderStatusToUiState (_ status : SearchOrderStatus) -> UiState {
    switch status {
    case .emptyKeyword:
        return UiState (screen: .orderList, status: "error", message: status.message)
    case .notFound:
        return UiState (screen: .orderList, status: "failed", message: status.message)
    case .found:
        return UiState (screen: .orderList, status: "success", message: status.message)
    }
}
