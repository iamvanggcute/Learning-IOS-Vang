import UIKit
for i in 1 ... 10 {
    print(i)
    
}
let numbers = [1,2,3,4,5]
var total = 0
for number in numbers {
    total += number
}
print(total)
 
for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    print(i)
}
func  greet(name :String){
    print("Helo \(name)")
}
greet(name: "Aman")
greet(name: "Vang")
func  square(_ number:Int) -> Int {
    number * number
}
let nhan = square(4)
let nhun = square(7)
print(nhan)
print(nhun)
func greett(name:String = "Guest" ){
    print("Helo \(name)")
}
greett()
greet(name: "An")

func PrinNumber(_ number:Int...){
    for numbers in number {
        print(numbers)
    }
}
PrinNumber(1,2,3)
enum TongNhungLoi : Error {
    case BeHon0
    case Validnumber
}
func BatLoi (_ number: Int) throws{
    if number < 0 {
        throw TongNhungLoi.BeHon0
    }
    if number > 0 {
        throw TongNhungLoi.Validnumber
    }
}
func BienDoi(_ numberr : inout Int){
    numberr = 0
}
var numberr = 10
BienDoi(&numberr)
print(numberr)








