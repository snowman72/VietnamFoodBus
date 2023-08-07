//
//  CakeRow.swift
//  VietnamFoodBus
//
//  Created by Vũ Minh Hà on 03/08/2023.
//

import SwiftUI

struct CakeRow: View {
    var cake: Cake
    
    var body: some View {
        HStack {
            Image(cake.imageNames[0])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipped()
                
                VStack(alignment: .leading) {
                    Text(cake.name)
                        .font(.title3)
                    Text(cake.region)
                        .font(.subheadline)
                }
                Spacer()
            
                if cake.isFavorite {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                }
        }
    }
}

struct CakeRow_Previews: PreviewProvider {
    static var previews: some View {
        CakeRow(cake: cakes[9])
    }
}
