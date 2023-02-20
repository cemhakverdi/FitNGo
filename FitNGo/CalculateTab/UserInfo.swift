//
//  UserInfo.swift
//  FitNGo
//
//  Created by Cem Hakverdi on 12/5/22.
//

import Foundation



class UserInformation {
    var firstName: String
    var lastName: String
    var weight: Int
    var height: Int
    var age: Int
    var result = 0
    
    init(){
        firstName = ""
        lastName = ""
        weight = 0
        height = 0
        age = 0
    }
    
    
    func calculateMan(){
        var doubleResult = 0.0
        doubleResult = 88.362
        print(doubleResult)
        doubleResult += (13.397 * Double(weight) * 0.4535)
        print(doubleResult)
        doubleResult += (4.799 * Double(height) * 2.54)
        print(height)
        doubleResult -= (5.677 * Double(age))
        print(doubleResult)
        
        result = Int(doubleResult)
    }
    
    func calculateWoman(){
        var doubleResult = 0.0
        
        doubleResult = 447.593
        doubleResult += (9.247 * Double(weight) * 0.4535)
        doubleResult += (3.098 * Double(height) * 2.54)
        doubleResult -= (4.33 * Double(age))
        
        result = Int(doubleResult)
    }
    
    
}
