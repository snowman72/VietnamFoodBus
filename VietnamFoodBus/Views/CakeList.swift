//
//  CakeList.swift
//  VietnamFoodBus
//
//  Created by Vũ Minh Hà on 03/08/2023.
//

import SwiftUI

struct CakeList: View {
    @State private var showFavoritesOnly = false
    @State private var searchTerm = ""
    @AppStorage("isDarkMode") private var isDark = false

    var favoriteCakes: [Cake] {
        guard !searchTerm.isEmpty else {
            return cakes.filter { cake in (!showFavoritesOnly || cake.isFavorite) }
        }
        return cakes.filter {
                    $0.name.localizedCaseInsensitiveContains(searchTerm)
        }.filter { cake in (!showFavoritesOnly || cake.isFavorite) }
        }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {Text("Favorites only")}

                ForEach(favoriteCakes) { cake in
                    NavigationLink {
                        CakeCard(cake: cake)
                    } label: {
                        CakeRow(cake: cake)
                    }
                }
            }
            .navigationTitle("My Cakes")
            .searchable(text: $searchTerm, prompt: "Search Cakes")
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    Button {
                        isDark.toggle()
                    } label: {
                        isDark ? Image(systemName: "sun.max") : Image(systemName: "moon.fill")
                    }
                }
            }
        }
        .environment(\.colorScheme, isDark ? .dark : .light)
    }
}

struct CakeList_Previews: PreviewProvider {
    static var previews: some View {
        CakeList()
    }
}
