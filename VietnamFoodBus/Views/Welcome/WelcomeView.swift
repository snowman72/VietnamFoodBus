//
//  WelcomeView.swift
//  VietnamFoodBus
//
//  Created by Vũ Minh Hà on 05/08/2023.
//

import SwiftUI

struct WelcomeView: View {
    @State var isWelcomeActive: Bool = true
    
    var body: some View {
        ZStack {
            if isWelcomeActive {
                GreetingView(active: $isWelcomeActive)
            } else {
                CakeList()
            }
        }
    }
}

