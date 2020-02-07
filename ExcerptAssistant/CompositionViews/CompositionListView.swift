//
//  CompositionListView.swift
//  ExcerptAssistant
//
//  Created by Alex Burdiss on 1/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//


// TODO: Document this file!


import SwiftUI

struct CompositionListView: View {
    
    var model = TromboneContentModel().excerpts
    @State var excerptIsPresented = false
    
    func showExcerpt() {
        excerptIsPresented = true
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(model) { item in
                    Button(action: {
                        self.showExcerpt()
                        
                    }) {
                        HStack {
                            Text(item.composer.shortName)
                                .bold()
                            Text(item.name)
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                       .sheet(isPresented: self.$excerptIsPresented) {
                        CompositionDetailView(composition: item, isPresented: self.$excerptIsPresented)
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
