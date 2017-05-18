//
//  Client.swift
//  WorkoutTracker
//
//  Created by Stefan Auvergne on 2/24/16.
//  Copyright © 2016 Stefan Auvergne. All rights reserved.
//

import Foundation

let gender = "gender"
let firstNameKey = "first name"
let lastNameKey = "last name"
let ageKey = "age"
let exercisesKey = "exercise array"

class Client: NSCoder {
    
    var gender:String
    var firstName:String
    var lastName:String
    var age:String
    var exerciseArray:[Exercise]
    
    //default initializer
    override init(){
        gender = ""
        firstName = ""
        lastName = ""
        age = ""
        exerciseArray = []
    }
    
    //overload initializer
    init(gender:String, firstName:String, lastName:String, age:String, exerciseArray:[Exercise]){
        self.gender = gender
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.exerciseArray = []
    }
    
    func encodeWithCoder(_ aCoder: NSCoder!) {
        aCoder.encode(gender, forKey: "gender")
        aCoder.encode(firstName, forKey: "first name")
        aCoder.encode(lastName, forKey: "last name")
        aCoder.encode(age, forKey: "age")
        aCoder.encode(exerciseArray, forKey:  "exercise array")
    }
    
    
    init (coder aDecoder: NSCoder!) {
        self.gender = aDecoder.decodeObject(forKey: "gender") as! String
        self.firstName = aDecoder.decodeObject(forKey: "first name") as! String
        self.lastName = aDecoder.decodeObject(forKey: "last name") as! String
        self.age = aDecoder.decodeObject(forKey: "age") as! String
        self.exerciseArray = aDecoder.decodeObject(forKey: "exercise array") as! [Exercise]
    }
}
