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
    @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    )
    
    var body: some View {
        ZStack{
            Map(coordinateRegion: $mapRegion)
                .ignoresSafeArea(edges: .all)
        }
    }
}

#Preview {
    LocationsView()
        .environmentObject(LocationsViewModel())
}
