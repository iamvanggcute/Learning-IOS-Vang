//
//  TotalPriceUiStateMapper.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 16/1/26.
//
func mapTotalPriceStatusToUiState(
    _ status: TotalPriceStatus,
    totalPrice: Double?
) -> UiState {

    switch status {
    case .priceInvalid:
        return UiState(
            screen: .orderDetail,
            status: "error",
            message: status.message
        )

    case .priceOK:
        let priceText = totalPrice
            .map { "\(Int($0)) VNĐ" }
            ?? "N/A"

        return UiState(
            screen: .payment,
            status: "success",
            message: "\(status.message) - Tổng tiền: \(priceText)"
        )
    }
}

