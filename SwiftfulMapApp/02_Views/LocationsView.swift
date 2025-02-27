//
//  LocationsView.swift
//  SwiftfulMapApp
//
//  Created by Darrell Stone on 2/27/25.
//

import SwiftUI
import MapKit


struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $vm.mapRegion)
                .ignoresSafeArea(edges: .all)
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
