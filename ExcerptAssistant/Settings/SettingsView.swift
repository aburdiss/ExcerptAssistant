//
//  SettingsView.swift
//  ExcerptAssistant
//
//  Created by Alex Burdiss on 1/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .center) {
                    HStack {
                        Spacer()
                        Text("App Design and Content by Alexander Burdiss and Qian Yu")
                            .multilineTextAlignment(.center)
                            .padding()
                        Spacer()
                    }
                    
                    Button(action: {
                        let url = URL(string: "mailto:aburdiss@gmail.com")!
                        UIApplication.shared.open(url)
                    }) {
                        Text("Send Feedback")
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.green, lineWidth: 1))
                            .padding()
                    }
                    
                    Button(action: {
                        let url = URL(string:
                            "https://www.bandroomonline.com")!
                        UIApplication.shared.open(url)
                    }) {
                        HStack {
                            Text("Visit ")
                            + Text("Band Room Online")
                            .italic()
                        }
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius:12)
                            .stroke(Color.green, lineWidth: 1))
                            .padding(.bottom, 80)
                    }
                    
                    
                    HStack {
                        Image("excerptBookCover")
                            .resizable()
                                .scaledToFit()
                                .frame(height: 150)
                        Button(action: {
                            let url = URL(string: "http://www.lulu.com/shop/alexander-burdiss/orchestral-excerpts-for-trombone/paperback/product-23373987.html")!
                            UIApplication.shared.open(url)
                        }) {
                            VStack(alignment: .leading) {
                                Text("Purchase \"Orchestral Excerpts for Trombone\"")
                                    .font(.headline)
                                Text("The companion book for TbnXcerpts")
                                    .font(.caption)
                                    .italic()
                                Text("Formatted for section use utilizing a single book")
                                    .font(.caption)
                                    .padding(.vertical)
                            }
                        }
                    }
                        .padding(.horizontal, 40)
                    Text("© 2020 Alexander Burdiss & Qian Yu")
                        .padding()
                }
                    .navigationBarTitle("More")
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
