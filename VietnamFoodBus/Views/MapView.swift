//
//  MapView.swift
//  VietnamFoodBus
//
//  Created by Vũ Minh Hà on 04/08/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var region = MKCoordinateRegion()
        
        var body: some View {
            Map(coordinateRegion: $region)
                .onAppear {
                    setRegion(coordinate)
                }
        }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 0.004, longitudinalMeters: 0.004)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 22.79186568765301, longitude: 105.45867764017002))
    }
}
