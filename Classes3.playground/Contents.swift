//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Student {
    let name: String
    let grade: Int
    
    init?(json: [String: Any]) {
        guard let name = json["name"] as? String,
            let gradeString = json["grade"] as? String,
            let gradeDouble = Double(gradeString),
            let grade = Int(exactly: gradeDouble)  // <-- 3.1 feature here
            else {
                return nil
        }
        self.name = name
        self.grade = grade
    }
}

func makeStudents(with data: Data) -> [Student] {
    guard let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments),
        let jsonArray = json as? [[String: Any]] else {
            return []
    }
    return jsonArray.flatMap(Student.init)
}

let rawStudents = "[{\"name\":\"Ray\", \"grade\":\"5.0\"}, {\"name\":\"Matt\", \"grade\":\"6\"}, {\"name\":\"Chris\",\"grade\":\"6.33\"}, {\"name\":\"Cosmin\", \"grade\":\"7\"}, {\"name\":\"Steven\", \"grade\":\"7.5\"}]"
        let data = rawStudents.data(using: .utf8)!
        let students = makeStudents(with: data)
        dump(students) // [(name: "Ray", grade: 5), (name: "Matt", grade: 6), (name: "Cosmin", grade: 7)]