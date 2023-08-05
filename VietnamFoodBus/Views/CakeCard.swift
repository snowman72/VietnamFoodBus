//
//  CakeCard.swift
//  VietnamFoodBus
//
//  Created by Vũ Minh Hà on 03/08/2023.
//

import SwiftUI
import CoreLocation

struct CakeCard: View {
    var cake: Cake
    
    var body: some View {
        ScrollView {
            
                MapView(coordinate: cake.locationCoordinate)
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 250)
                CircleImage(image: cake.image)
                    .offset(y: -100)
                    .padding(.bottom, -100)
                
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(cake.name)
                                .font(.title)
                            .fontWeight(.bold)
                            Text(cake.region)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        Image(systemName: "star.fill")
                    }
                    
                    Divider().padding(.bottom)

                    Text("Images")
                        .font(.title2)
                        .fontWeight(.bold)
                    cake.image
                        .padding(.bottom, 20)
                    Text("Description")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text(cake.description)
                    

                }
                .padding()
            
            
        }
        .navigationTitle(cake.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CakeCard_Previews: PreviewProvider {
    static var previews: some View {
        CakeCard(cake: cakes[0])
    }
}
