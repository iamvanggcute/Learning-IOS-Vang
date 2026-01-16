//
//  mapTotalPriceStatusToUiState.swift
//  SwiftData
//
//  Created by nguyễn văn vang on 16/1/26.
//

func mapPaymentStatusToUiState (_ status : PaymentStatus) -> UiState {
    switch status {
    case .paymentInvalid :
        return UiState (screen: .payment, status: "error", message: status.message)
    case .paymentFailed :
        return UiState (screen: .payment, status: "failed", message: status.message)
    case .paymentSuccess :
        return UiState (screen: .payment, status: "success", message: status.message)
    }
}
