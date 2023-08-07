//
//  ImageRow.swift
//  VietnamFoodBus
//
//  Created by Vũ Minh Hà on 06/08/2023.
//

import SwiftUI

struct ImageRow: View {
    var cake: Cake
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(cake.imageNames, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 200, height: 200)
                        .border(.brown, width: 2)
                        .cornerRadius(25)
                }
            }
        }
    }
}

struct ImageRow_Previews: PreviewProvider {
    static var previews: some View {
        ImageRow(cake: cakes[3])
    }
}
