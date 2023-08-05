//
//  CakeList.swift
//  VietnamFoodBus
//
//  Created by Vũ Minh Hà on 03/08/2023.
//

import SwiftUI

struct CakeList: View {
    var body: some View {
        NavigationView {
            List(cakes) {cake in
                NavigationLink {
                    CakeCard(cake: cake)
                } label: {
                    CakeRow(cake: cake)
                }
                .navigationTitle("My Cakes")
            }
        }
    }
}

struct CakeList_Previews: PreviewProvider {
    static var previews: some View {
        CakeList()
    }
}
