//
//  WelcomeView.swift
//  VietnamFoodBus
//
//  Created by Vũ Minh Hà on 05/08/2023.
//

import SwiftUI

struct GreetingView: View {
    @Binding var active: Bool
    @State private var showingAlert = false
    
    var body: some View {
        ZStack {
            Image("welcome")
                .resizable()
                .aspectRatio(UIImage(named: "welcome")!.size, contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            .overlay(Rectangle()
                .edgesIgnoringSafeArea(.all)
                .foregroundColor(.black)
                .opacity(0.3)
                )
            
            VStack {
                Image("app-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .offset(y: 20)
                Text("Vietnam Food Bus")
                    .frame(width: 300)
                    .font(.custom("Lobster", size: 60))
                    .foregroundColor(Color.yellow)
                    .multilineTextAlignment(.center)
                    .overlay(Capsule()
                        .foregroundColor(.black)
                        .opacity(0.05))
                    .padding(.bottom, 60)
                    .offset(y: -10)
                    .shadow(radius: 7)
                
                
                Text("Explore the traditional cakes in various regions throughout Vietnam")
                    .multilineTextAlignment(.center)
                    .font(.callout)
                    .foregroundColor(Color.white)
                    .frame(width: 300)
                    .shadow(radius: 7)
                
                Spacer()
                Button {
                    active = false
                } label: {
                    Capsule()
                        .fill(Color.white.opacity(0.01))
                        .padding(8)
                        .frame(height:80)
                        .overlay(Text("Get Started")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.yellow)
                            .shadow(radius: 7).blur(radius: 0.1)
                        )
                }
                
                Button {
                    showingAlert = true
                } label: {
                    Image(systemName: "info.circle")
                        .dynamicTypeSize(.xLarge)
                        .foregroundColor(.white)
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("About me")
                        , message: Text("Vu Minh Ha\ns3978681\nBachelor of IT"))
                }
                .offset(x: 130, y: -10)

            }
            .padding(.top, 15)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView(active: .constant(true))
    }
}
