//
//  CircleImage.swift
//  VietnamFoodBus
//
//  Created by Vũ Minh Hà on 04/08/2023.
//

import SwiftUI

struct CircleImage: View {
    var cake: Cake
    
    var body: some View {
        Image(cake.imageNames[0])
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(cake: cakes[8])
    }
}
