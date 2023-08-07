//
//  MapView.swift
//  VietnamFoodBus
//
//  Created by Vũ Minh Hà on 04/08/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    var cake: Cake
    
    @State private var region = MKCoordinateRegion()
        
    var body: some View {

        Map(coordinateRegion: $region, annotationItems: cakes, annotationContent: { cake in
            MapMarker(coordinate: cake.locationCoordinate, tint: .red)
        })
            .onAppear {
                setRegion(cake.locationCoordinate)
            }
        }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(center: coordinate, latitudinalMeters: 0.004, longitudinalMeters: 0.004)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(cake: cakes[0])
    }
}
