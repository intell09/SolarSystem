//
//  PlanetController.swift
//  SolarSystem
//
//  Created by russell gadsden on 3/4/23.
//

import Foundation


class PlanetController {
    
    init() {
        let mercury = Planet(name: "Mercury", diameter: 4879, dayLength: 422.6, millionKmsFromSun: 57.9)
        let venus = Planet(name: "venus", diameter: 12104, dayLength: 2802, millionKmsFromSun: 108.2)
        let earth = Planet(name: "Earth", diameter: 12756, dayLength: 24, millionKmsFromSun: 149.6)
        let mars = Planet(name: "Mars", diameter: 6792, dayLength: 24.7, millionKmsFromSun: 227.9)
        let jupiter = Planet(name: "Jupiter", diameter: 142984, dayLength: 9.9, millionKmsFromSun: 778.6)
        let saturn = Planet(name: "Saturn", diameter: 120536, dayLength: 10.7, millionKmsFromSun: 1433.5)
        let uranus = Planet(name: "Uranus", diameter: 51118, dayLength: 17.2, millionKmsFromSun: 2872.5)
        let neptune = Planet(name: "Neptune", diameter: 49528, dayLength: 16.1, millionKmsFromSun: 4495.1)
        let pluto = Planet(name: "Pluto", diameter: 2370, dayLength: 153.3, millionKmsFromSun: 5906.4)
        
        self.planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]
}

    
    //CRUD functions
    
    func create(planetWithName name: String, diameter: Int, dayLength: Float, millionKmsFromSun: Float) -> Planet {
        let planet = Planet(name: name, diameter: diameter, dayLength: dayLength, millionKmsFromSun: millionKmsFromSun)
        
        self.planets.append(planet)
        
        return planet
    }
    
    func delete(planet: Planet) {
        if let index = self.planets.index(where: { $0 == planet}){
            self.planets.remove(at: index)
    }
   }
    var planets: [Planet]
}


