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
            MapView(cake: cake)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 250)
                .border(.brown, width: 1)
            
                CircleImage(cake: cake)
                        .offset(y: -100)
                        .padding(.bottom, -100)
                
                VStack(alignment: .leading) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text(cake.name)
                                .font(.custom("Pacifico", size: 30))
                            Text(cake.region)
                                .foregroundColor(.secondary)
                        }
                        .font(.subheadline)
                        
                        Spacer()
                        
                        if cake.isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        } else {
                            Image(systemName: "star.fill")
                        }
                    }
                    
                    Divider().padding(.bottom)

                    Text("Images")
                        .font(.title2)
                        .fontWeight(.bold)
                    ImageRow(cake: cake)
                        .padding(.bottom, 30)
                        
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
