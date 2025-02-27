//
//  LocationsView.swift
//  SwiftfulMapApp
//
//  Created by Darrell Stone on 2/27/25.
//

import SwiftUI


class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init () {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
    
}

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) {
                Text($0.name)
            }
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
