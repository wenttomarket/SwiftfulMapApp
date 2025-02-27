//
//  SwiftfulMapAppApp.swift
//  SwiftfulMapApp
//
//  Created by Darrell Stone on 2/27/25.
//

import SwiftUI

@main
struct SwiftfulMapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
