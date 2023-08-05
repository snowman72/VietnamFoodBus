//
//  Cake.swift
//  VietnamFoodBus
//
//  Created by Vũ Minh Hà on 04/08/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Cake: Identifiable, Codable {
    var id: Int
    var name: String
    var region: String
    var isFavorite: Bool
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
        
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Codable {
        var latitude: Double
        var longitude: Double
    }

}

