//
//  ContentView.swift
//  SwiftUiMap
//
//  Created by Luiz Andrade on 23/08/2022.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                GeometryReader { proxy in
                    MapView(coordinate: CLLocationCoordinate2D(latitude: 41.1806, longitude: -8.6821))
                        .ignoresSafeArea()
                        .frame(width: proxy.size.width,
                               height: proxy.size.height,
                               alignment: .center)
                }
                
            }
            .navigationTitle("Swift Map")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
