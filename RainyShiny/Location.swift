//
//  Location.swift
//  RainyShiny
//
//  Created by Matthew Wood on 2016-12-02.
//  Copyright © 2016 Matthew Wood. All rights reserved.
//

import CoreLocation

class Location {
    
    // static is similar to global
    static var sharedInstance = Location()
    
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
