import UIKit

struct Car {
    let Id : Int
    let Name : String
    let Color : String
    let ThuocTinh : String
}
struct CarList {
    let Id_Car : Int
    let Name_Car : String
    let wheel : Int
}
let carList : [CarList] = [
    CarList (Id_Car: 1, Name_Car:"Sedan", wheel: 4),
    CarList (Id_Car: 2, Name_Car:"SUV", wheel: 4),
    CarList (Id_Car: 3, Name_Car:"Truck", wheel: 6)
]
    
let cAr : [Car] = [
    Car (Id: 1, Name: "Car A", Color: "Red", ThuocTinh: "Sedan"),
    Car (Id: 2, Name: "Car B", Color: "Black", ThuocTinh: "Sedan"),
    Car (Id: 3, Name: "Car C", Color: "Red", ThuocTinh: "SUV"),
    Car (Id: 4, Name: "Car D", Color: "White", ThuocTinh: "SUV"),
    Car (Id: 5, Name: "Car E", Color: "Black", ThuocTinh: "Truck"),
    Car (Id: 6, Name: "Car F", Color: "Red", ThuocTinh: "Truck")
]
let locCar = cAr.filter { $0.Color == "Red" && $0.ThuocTinh == "Sedan"}
print(locCar)

let nameCar : [String] = cAr.map { $0.Name}
let nameCarset : Set<String> = Set (carList.map { $0.Name_Car})
