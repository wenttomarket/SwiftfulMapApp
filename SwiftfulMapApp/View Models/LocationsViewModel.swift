//
//  LocationsViewModel.swift
//  SwiftfulMapApp
//
//  Created by Darrell Stone on 2/27/25.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init () {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
    
}
