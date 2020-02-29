//
//  CompositionListView.swift
//  ExcerptAssistant
//
//  Created by Alex Burdiss and Qian Yu on 1/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//


// TODO: Document this file!


import SwiftUI

struct CompositionListView: View {
    
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
                        }
                    }
                }
            }
        .navigationBarTitle("TbnXcerpts")
//        .navigationBarItems(trailing:
//            NavigationLink(destination: FavoriteExcerpts()) {
//                HStack {
//                    Image(systemName: "star")
//                    Text("Favorites")
//                }
//            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CompositionListView_Previews: PreviewProvider {
    static var previews: some View {
        CompositionListView()
    }
}
