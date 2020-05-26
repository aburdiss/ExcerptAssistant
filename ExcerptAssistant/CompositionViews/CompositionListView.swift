//
//  CompositionListView.swift
//  ExcerptAssistant
//
//  Created by Alex Burdiss and Qian Yu on 1/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//


import SwiftUI

struct CompositionListView: View {
    @EnvironmentObject var favorites: Favorites
    
    
    @State private var resettingFavoritesAlert = false
    
    var model = TromboneContentModel().excerpts
    
    var body: some View {
        NavigationView {
            List {
                ForEach(model) { item in
                    NavigationLink(destination: CompositionDetailView(composition: item)) {
                        HStack {
                            Text(item.composerLast)
                                .bold()
                            Text(item.name)
                            Spacer()
                            if self.favorites.contains(String(item.id)) {
                                Spacer()
                                Image(systemName: "heart.fill")
                                    .accessibility(label: Text("This is a favorite exercise"))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
            }
        .navigationBarTitle("TbnXcerpts")
            .navigationBarItems(leading: Button(action: {
                self.resettingFavoritesAlert = true
            }) {
                Text("Reset")
                Image(systemName: "heart.slash")
            }
            .alert(isPresented: $resettingFavoritesAlert) {
                Alert(title: Text("All favorites will be removed"), message: Text("This cannot be undone!"), primaryButton: .destructive(Text("Reset")) {
                    self.resetFavorites()
                    }, secondaryButton: .cancel())
            },
                trailing: NavigationLink(destination: RandomCompositionView()) {
                HStack {
                    Image(systemName: "cube")
                    Text("Random")
                }
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    func resetFavorites() {
        self.favorites.removeAll()
    }
}

struct CompositionListView_Previews: PreviewProvider {
    static var previews: some View {
        CompositionListView()
            .environmentObject(Favorites())
    }
}
