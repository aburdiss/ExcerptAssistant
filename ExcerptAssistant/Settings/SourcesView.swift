//
//  SourcesView.swift
//  ExcerptAssistant
//
//  Created by Alex Burdiss on 1/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

// TODO: Make a format to store sources.

import SwiftUI

struct SourcesView: View {
    var model = CitationsModel().citations
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(model, id: \.self) { item in
                        Text(item)
                            .padding()
                    }
                }
            }
            .navigationBarTitle("Citations")
        }
    }
}

struct SourcesView_Previews: PreviewProvider {
    static var previews: some View {
        SourcesView()
    }
}
