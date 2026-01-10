import Foundation

struct Student {
    let id : Int
    let name : String
    var score : Double
}
class StudentManager {
    private var studentArray: [Student] = []
    private var nextId: Int = 1
    
    func addStudent (name : String ,score : Double) {
        guard !name.isEmpty else {
            print("name khong duoc rong")
            return
        }
        
        guard (0...10).contains(score) else {
            print("score tu 0 den 10")
            return
        }
        
        let newStudent = Student(id: nextId, name: name, score: score)
        studentArray.append(newStudent)
        nextId += 1
    }
    
    func printStudent() {
        let inStundent = studentArray.filter{$0.score >= 5}
        
    }
    
    func averageScore() -> Double {
        var sum: Double = 0
       var DemPT = studentArray.count
        for tinhScore in studentArray {
            sum += tinhScore.score
        }
        return  sum / Double(DemPT)
    }
    
    func updateScore(id: Int, newScore: Double) {
        guard (0...10).contains(newScore) else {
            print("score tu 0 den 10")
            return
        }
        
        guard let index = studentArray.firstIndex(where: {$0.id == id }) else {
            return
        }
        
        studentArray[index].score = newScore
    }
    
    func passedStudents() -> [Student] {
        return studentArray.filter { $0.score >= 5 }
    }
    
    func failuredStudents() -> [Student] {
        return studentArray.filter{$0.score < 5}
    }
}


let manager = StudentManager()
manager.addStudent(name: "a", score: 9)
manager.addStudent(name: "b", score: 4)
manager.averageScore()




struct Todo {
    let id : Int
    let title : String
    var isCompleted : Bool
}
class TodoManager {
    private var arraryTodo : [Todo] = []
    private var id : Int = 1
    func addTode(title : String){
        guard !title.isEmpty else {
            print("Khong Co Ten")
            return
        }
        let newTodo = Todo(id: id, title: <#T##String#>, isCompleted: <#T##Bool#>)
        id += 1
    }
    func toggleTode(id : Int) {
        print("Done")
    }
    func printTodos () {
        print("No Done")
        print("Done")
    }
    func addTodea(title : String){
        guard !title.isEmpty else {
            print("Rong")
            return
        }
        let newTodos = Todo(id: id, title: <#T##String#>, isCompleted: <#T##Bool#>)
        id += 1
    }
    func toggeleTodos(id : Int){
        if var index = arraryTodo.firstIndex(where: {$0.id == id}) {
            arraryTodo[index].isCompleted = !arraryTodo[index].isCompleted
        }
    }
    func removeTodo(id : Int){
        if var index = arraryTodo.firstIndex(where: {$0.id == id}) {
            arraryTodo.remove(at: index)
        }
        
    }
    func countCompletedTodes () -> Int {
        var sum : Int = 0
        for CongViec in arraryTodo {
            if CongViec.isCompleted {
                sum += 1
            }
        }
        return sum
    }
    func prinstTodos(){
        for Done in arraryTodo {
            if Done.isCompleted {
                print("Done")
            } else {
                print("No")
            }
        }
    }
}
