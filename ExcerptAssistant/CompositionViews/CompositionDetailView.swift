//
//  CompositionDetailView.swift
//  ExcerptAssistant
//
//  Created by Alex Burdiss on 1/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//


// TODO: Document this file!


import SwiftUI
import WebKit
import UIKit

struct CompositionDetailView: View {
    var composition: Composition
    @Binding var isPresented: Bool
    
    func stopDisplaying() {
        self.isPresented = false
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Group {
                        Text(self.composition
                                .composer.name)
                            .font(.headline)
                            .padding(.horizontal)
                        Text(self.composition.date)
                            .padding(.horizontal)
                    }
                    Group {
                        HStack {
                            Text("Era:")
                                .font(.headline)
                            Text(self.composition.era)
                        }
                        .padding(.horizontal)
                        HStack {
                            Text("Genre:")
                                .font(.headline)
                            Text(self.composition.genre)
                        }
                        .padding(.horizontal)
                        Divider()
                            .background(Color.green)
                            .padding(.horizontal)
                    }
                    
                    // Excerpt Group
                    Group {
                        ForEach(self.composition.excerpts) { item in
                            Group {
                                Text(item.description)
                                    .font(.headline)
                                    .padding(.horizontal)
                                    .padding(.top)
                                Text(item.measures)
                                    .padding(.horizontal)
                            }
                            ForEach(item.pictures, id:\.self) { picture in
                                Group {
                                    Text("\(picture[0])")
                                    .padding(.horizontal)
                                    Image("\(picture[1])")
                                        .resizable()
                                        .scaledToFit()
                                        .background(Color.white)
                                }
                            }
                        }
                    }
                    Divider()
                        .background(Color.green)
                        .padding(.horizontal)
                    Text("Listen")
                        .font(.headline)
                        .padding(.bottom)
                        .padding(.leading)
                    ForEach(self.composition.videos, id: \.self) { item in
                        VStack(alignment: .leading) {
                            Button(action: {
                                UIApplication.shared.open(URL(string: "https://youtu.be/\(item[1])")!)
                            }) {
                                Text(item[0])
                                    .padding(.horizontal)
                                    .padding(.bottom)
                            }
                        }
                    }
                    Text("Professional Advice")
                        .padding()
                        .font(.headline)
                    Text(self.composition.professionalAdvice)
                        .padding(.horizontal)
                }
                .padding()
            }
            .navigationBarTitle(self.composition.name)
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

struct CompositionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CompositionDetailView(
            composition: brahms4,
            isPresented: .constant(true)
        ).environment(\.colorScheme, .dark)
    }
}
