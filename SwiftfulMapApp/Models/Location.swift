//
//  Location.swift
//  SwiftfulMapApp
//
//  Created by Darrell Stone on 2/27/25.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    
// Identifiable
var id: String {
        // name = "Colossuem"
        // cityName = "Rome"
        name + cityName
    }
}
