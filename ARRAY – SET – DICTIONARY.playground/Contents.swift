import UIKit
struct Student {
    let id: Int
    let name : String
    let score : Int
}
let students: [Student] = [
    Student(id: 1, name: "An", score: 8),
    Student(id: 2, name: "Binh", score: 4),
    Student(id: 3, name: "Chi", score: 7),
    Student(id: 4, name: "An", score: 6)
]
print(students)
let studentsNames = students.map { $0.name }
let studentsScores = students.filter { $0.score > 5}
let studentsFail = students.contains (where:{ $0.score < 5} )
let studentsPass = students.allSatisfy {$0.score >= 5}
let studentsSech = students.first(where: {$0.id == 2})
let studentsNameSet : Set<String> = Set (students.map { $0.name})
let nameAn = studentsNameSet.contains( "An")
var number : Set<Int> = [1,2,3]
number.insert(4)
number.remove(2)
print(number)

let a: Set<Int> = [1, 2, 3, 4]
let b: Set<Int> = [3, 4, 5]
let unionSet = a.union(b)
let intersectionSet = a.intersection(b)
let subtractingSet = a.subtracting(b)
var dic : [Int : Student] = [:]
for student in students {
    dic[student.id] = student
}
if let student = dic[2] {
    print(student.name)
}
for (id ,student ) in dic {
    print("Id : \(id), Name : \(student.name), Score : \(student.score)")
}
let allKey = Array(dic.keys)
let allValue = Array(dic.values)

