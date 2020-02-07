//
//  ComposerDetailView.swift
//  ExcerptAssistant
//
//  Created by Alex Burdiss on 1/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

// TODO: Document this file!


import SwiftUI

struct ComposerDetailView: View {
    var composer: Composer
    @Binding var isPresented: Bool
    
    func stopDisplaying(){
        isPresented = false
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("\\\(composer.ipa)\\")
                //Divider()
                    //.background(Color.green)
                    //.padding(.horizontal)
                Image("\(composer.image)")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 250)
                HStack {
                    Text("Country:")
                        .font(.headline)
                    Text(composer.country)
                    Spacer()
                }
                HStack {
                    Text("Dates:")
                        .font(.headline)
                    Text(composer.dates)
                    Spacer()
                }
                HStack {
                    Text("About:")
                        .font(.headline)
                    Spacer()
                }
                VStack(alignment: .leading) {
                    Text(composer.bio)
                }
                Spacer()
            }
            .padding(.horizontal, 40)
            .navigationBarTitle(composer.name)
            .navigationBarItems(trailing:
            Button(action: {
                self.stopDisplaying()}) {
                VStack {
                    Image(systemName: "chevron.down")
                }
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ComposerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ComposerDetailView(composer: bach, isPresented: .constant(true))
    }
}
