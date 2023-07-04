//
//  Planet.swift
//  SolarSystem
//
//  Created by russell gadsden on 3/4/23.
//

import Foundation

class Planet {
  
    init(name: String, diameter: Int, dayLength: Float, millionKmsFromSun: Float){
        self.name = name
        self.imageName = name.lowercased()
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKmsFromSun = millionKmsFromSun
        
    }
    
    let name: String
    let imageName: String
    let diameter: Int
    let dayLength: Float
    let millionKmsFromSun: Float
}


extension Planet : Equatable {}
    
func == (lhs: Planet, rhs: Planet) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.imageName != rhs.imageName {return false}
    if lhs.diameter != rhs.diameter {return false}
    if lhs.dayLength != rhs.dayLength {return false}
    if lhs.millionKmsFromSun != rhs.millionKmsFromSun {return false}
   
    return true
}
    


