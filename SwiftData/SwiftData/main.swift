
import Foundation

// =======================
// MARK: - DEMO / TEST
// =======================

func main() {

    print("===== DEMO START =====")

    // --------------------------------------------------
    // 1. TẠO DỮ LIỆU MẪU
    // --------------------------------------------------

    // Users
    let users: [User] = [
        User(id: 1, name: "Alice", isActive: true),
        User(id: 2, name: "Bob", isActive: false)
    ]

    // Products
    let iphone = Product(id: 1, name: "iPhone", price: 500_000)
    let macbook = Product(id: 2, name: "MacBook", price: 1_200_000)
    let fakeProduct = Product(id: 3, name: "Fake", price: -100)

    // Orders
    let validOrder = Order(
        orderId: 1,
        userId: 1,
        products: [iphone]
    )

    let emptyOrder = Order(
        orderId: 2,
        userId: 1,
        products: []
    )

    let bigOrder = Order(
        orderId: 3,
        userId: 1,
        products: [macbook]
    )

    let invalidPriceOrder = Order(
        orderId: 4,
        userId: 1,
        products: [fakeProduct]
    )

    let orders = [validOrder, emptyOrder, bigOrder]

    // --------------------------------------------------
    // 2. DEMO CÁC LUỒNG
    // --------------------------------------------------

    // 🔹 Luồng 1: User hợp lệ → Order hợp lệ → Tính tiền → Thanh toán
    print("\n--- FLOW 1: USER OK → ORDER OK → PAYMENT ---")

    let userStatus = checkUserStatus(users: users, userId: 1)
    print(mapUserStatusToUiState(userStatus))

    let orderStatus = validateOrder(order: validOrder)
    print(mapOrderStatusToUiState(orderStatus))

    calculateTotalPrice(products: validOrder.products) { status, total in
        print(mapTotalPriceStatusToUiState(status, totalPrice: total))

        let paymentStatus = payment(totalPrice: total)
        print(mapPaymentStatusToUiState(paymentStatus))
    }

    // 🔹 Luồng 2: Order rỗng
    print("\n--- FLOW 2: ORDER EMPTY ---")

    let emptyOrderStatus = validateOrder(order: emptyOrder)
    print(mapOrderStatusToUiState(emptyOrderStatus))

    // 🔹 Luồng 3: Product có giá âm
    print("\n--- FLOW 3: PRODUCT PRICE INVALID ---")

    calculateTotalPrice(products: invalidPriceOrder.products) { status, total in
        print(mapTotalPriceStatusToUiState(status, totalPrice: total))
    }

    // 🔹 Luồng 4: Thanh toán thất bại do tổng tiền lớn
    print("\n--- FLOW 4: PAYMENT FAILED (TOTAL TOO LARGE) ---")

    calculateTotalPrice(products: bigOrder.products) { status, total in
        print(mapTotalPriceStatusToUiState(status, totalPrice: total))

        let paymentStatus = payment(totalPrice: total)
        print(mapPaymentStatusToUiState(paymentStatus))
    }

    // 🔹 Luồng 5: Tìm kiếm đơn hàng
    print("\n--- FLOW 5: SEARCH ORDER ---")

    let searchEmpty = searchOrderByProductName(keyword: nil, orders: orders)
    print(mapSearchOrderStatusToUiState(searchEmpty))

    let searchFound = searchOrderByProductName(keyword: "iphone", orders: orders)
    print(mapSearchOrderStatusToUiState(searchFound))

    let searchNotFound = searchOrderByProductName(keyword: "samsung", orders: orders)
    print(mapSearchOrderStatusToUiState(searchNotFound))

    print("\n===== DEMO END =====")
}

// CHẠY DEMO
main()

