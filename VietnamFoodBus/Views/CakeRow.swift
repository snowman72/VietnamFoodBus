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
            cake.image
                .resizable()
                .scaledToFit()
            .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                Text(cake.name)
                    .font(.title3)
                Text(cake.region)
                    .font(.subheadline)
            }
            Spacer()
            Image(systemName: "star.fill")
        }
    }
}

struct CakeRow_Previews: PreviewProvider {
    static var previews: some View {
        CakeRow(cake: cakes[0])
    }
}
