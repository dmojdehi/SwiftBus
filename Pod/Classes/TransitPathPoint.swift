//
//  TransitPathPoint.swift
//  SwiftBus
//
//  Created by David on 2015-08-29.
//  Copyright (c) 2017 Adam Boyd. All rights reserved.
//

import Foundation

private let latEncoderString = "kLatEncoder"
private let lonEncoderString = "kLonEncoder"

//A transit stop is a single stop which is tied to a single route
open class TransitPathPoint: NSObject, NSCoding {
    
    open var lat: Double = 0
    open var lon: Double = 0

    public init(_ lat: Double, _ lon: Double) {
        self.lat = lat
        self.lon = lon
    }
    
    //MARK: NSCoding
    
    public required init?(coder aDecoder: NSCoder) {
        self.lat = aDecoder.decodeDouble(forKey: latEncoderString)
        self.lon = aDecoder.decodeDouble(forKey: lonEncoderString)
    }
    
    open func encode(with aCoder: NSCoder) {
        aCoder.encode(self.lat, forKey: latEncoderString)
        aCoder.encode(self.lon, forKey: lonEncoderString)
    }
}
