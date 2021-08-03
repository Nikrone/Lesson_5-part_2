//
//  Hospital.swift
//  Lesson_5-part_2
//
//  Created by Evgeniy Nosko on 3.08.21.
//

import Foundation


struct HumanStruct {
    var age: Int
}

class Human {
    var age: Int
    
    init(age: Int) {
        self.age = age
    }
}

class Patient: Human {
    
    var diagnoz: String
    
    init(diagnoz: String, age: Int) {
        self.diagnoz = diagnoz
        super.init(age: age)
        
        self.printInfo()
    }
    
    func printInfo() {
        print(self.diagnoz)
        print(self.age)
    }
    
    deinit {
        self.age = 0
        self.diagnoz = "net"
        
        self.printInfo()
    }
    
}


class Hospital {
    var patients: [Patient]
    
    static let shared: Hospital = Hospital()
    
    private init() {
        self.patients = []
    }
    
    func addPatient() {
        let patient = Patient(
            diagnoz: "diagnoz",
            age: Int.random(in: 10...100)
        )
        self.patients.append(patient)
    }
    
    func patientsAges() -> String {
        let ages = self.patients.map { patient in
            return "\(patient.age)"
        }
//        .joined() -  объединение элементов массива
        return ages.joined(separator: ", ")
    }
}
