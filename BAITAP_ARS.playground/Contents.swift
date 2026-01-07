import UIKit

import UIKit

struct Car {
    let Id : Int
    let Name : String
    let Color : String
    let ThuocTinh : String
}
struct CarList : Hashable {
    let id : Int
    let name : String
    let numbersOfWheel : Int
}
let carListS : [CarList] = [
    CarList (id: 1, name:"Sedan", numbersOfWheel: 4),
    CarList (id: 2, name:"SUV", numbersOfWheel: 4),
    CarList (id: 3, name:"Truck", numbersOfWheel: 6)
]
    
let carArray : [Car] = [
    Car (Id: 1, Name: "Car A", Color: "Red", ThuocTinh: "Sedan"),
    Car (Id: 2, Name: "Car B", Color: "Black", ThuocTinh: "Sedan"),
    Car (Id: 3, Name: "Car C", Color: "Red", ThuocTinh: "SUV"),
    Car (Id: 4, Name: "Car D", Color: "White", ThuocTinh: "SUV"),
    Car (Id: 5, Name: "Car E", Color: "Black", ThuocTinh: "Truck"),
    Car (Id: 6, Name: "Car F", Color: "Red", ThuocTinh: "Truck")
]
let locCar = carArray.filter { $0.Color == "Red" && $0.ThuocTinh == "Sedan"}
print(locCar)

let nameCar : [String] = carArray.map { $0.Name}
let nameCarset : Set<CarList> = Set(carListS)
let ktSLcar : Set<String> = Set(nameCarset.map{$0.name})
let ktrCar = nameCarset.contains(where: {$0.name == "SUV" && $0.numbersOfWheel == 4 })
var carbycolor : [ String : [Car]] = [:]
for car in carArray {
    carbycolor[car.Color, default: []].append(car)
}
print(carbycolor)
var countcarcolor : [String : Int] = [:]
for car in carArray {
    countcarcolor [car.Color , default: 0] += 1
}
print(countcarcolor)
func LaycarList (_ name : String) -> [Car] {
    carArray.filter{$0.ThuocTinh == name}
}
var CheckOfwheel : [String : Int ] = Dictionary ( uniqueKeysWithValues: carListS.map{($0.name , $0.numbersOfWheel)})
var PhanLoai : [CarList : [String: [Car]]] = [:]
for LocCar in carListS {
    let LocLoaiXe = carArray.filter{$0.ThuocTinh == LocCar.name}
    let LocColor = Dictionary(grouping: LocLoaiXe){$0.Color}
    PhanLoai [LocCar] = LocColor
}
var DemXe : [String : Int] = [:]
for Demcar in carArray {
    DemXe[Demcar.ThuocTinh , default: 0] += 1
}
print(DemXe)
func KiemtraDuLieu ( _ carlistS :[CarList]) -> Bool {
    var idSet : Set<Int> = []
    for car in carlistS {
        if car.numbersOfWheel <= 2 { print("Xe khong Dap ung Nhu Cau \(car.name)")
            return false
        }
        if idSet.contains(car.id){
            print("Trung Id")
            return false
        }
        idSet.insert(car.id)
    }
    return true
}


let carListA : [CarList] = [
    CarList (id: 4, name: "Motorbike", numbersOfWheel: 2)
]
let intersectionSet = Set(carListS).union(carListA)
print(intersectionSet)
