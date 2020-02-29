//
//  ComposerListView.swift
//  ExcerptAssistant
//
//  Created by Alex Burdiss on 1/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

// TODO: Document this file!


import SwiftUI

struct ComposerListView: View {
    
    var model = TromboneContentModel().composers
    
    var body: some View {
        NavigationView {
            List {
                ForEach(model) { item in
                    NavigationLink(destination: ComposerDetailView(composer: item)) {
                        Text(item.name)
                    }
//                    Button(action: {
//                        self.showComposer()
//                    }) {
//                        HStack {
//                            Text(item.name)
//                            Spacer()
//                            Image(systemName: "chevron.right")
//                        }
//                        .sheet(isPresented: self.$composerIsPresented) {
//                        ComposerDetailView(composer: item, isPresented: self.$composerIsPresented)
//                        }
//                    }
                    
                }
                
            }
        .navigationBarTitle("Composers")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ComposerListView_Previews: PreviewProvider {
    static var previews: some View {
        ComposerListView()
    }
}
