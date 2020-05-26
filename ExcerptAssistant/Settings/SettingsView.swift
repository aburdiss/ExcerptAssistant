//
//  SettingsView.swift
//  ExcerptAssistant
//
//  Created by Alex Burdiss on 1/24/20.
//  Copyright © 2020 Alex Burdiss. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var settings: settingsModel
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Random Selections")) {
                    Picker(selection: $settings.selectedRandoms, label:Text("Random Selections")) {
                            ForEach(0 ..< 2) {
                                Text(self.settings.randomOptions[$0])
                            }
                        }
                    .pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Resources")) {
                    HStack {
                        Image("excerptBookCover")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 75)
                            .mask(RoundedRectangle(cornerRadius: 7.0))
                            .overlay(
                            RoundedRectangle(cornerRadius: 7.0)
                                .stroke(Color.gray, lineWidth: 0.3)
                        )
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
                            }
                        }
                    }
                    Button(action: {
                        let url = URL(string: "https://apps.apple.com/us/app/trombone-routines/id1511172029")!
                        UIApplication.shared.open(url)
                    }) {
                        HStack {
                            Image("TbnRoutinesIcon")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 29, height: 29)
                                .mask(RoundedRectangle(cornerRadius: 7.0))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 7.0)
                                        .stroke(Color.gray, lineWidth: 0.3)
                                )
                            Text("Download Trombone Routines")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                    Button(action: {
                        let url = URL(string: "https://apps.apple.com/us/app/scale-practice-randomizer/id1496727056")!
                        UIApplication.shared.open(url)
                    }) {
                        HStack {
                            Image("ScalePracticeIcon")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 29, height: 29)
                                .mask(RoundedRectangle(cornerRadius: 7.0))
                            .overlay(
                                RoundedRectangle(cornerRadius: 7.0)
                                    .stroke(Color.gray, lineWidth: 0.3)
                            )
                            Text("Download Scale Practice - Randomizer")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                    Button(action: {
                        let url = URL(string: "http://www.arsnovapublishing.com")!
                        UIApplication.shared.open(url)
                    }) {
                        HStack {
                            Text("Visit Ars Nova Publishing")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                    Button(action: {
                        let url = URL(string:
                            "https://www.bandroomonline.com")!
                        UIApplication.shared.open(url)
                    }) {
                        HStack {
                            Text("Visit Band Room Online")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                }
                
                Section(header: Text("About")) {
                    Text("© 2020 Alexander Burdiss")
                    Text("Special Thanks to Qian Yu")
                    Button(action: {
                    let url = URL(string: "mailto:aburdiss@gmail.com")!
                        UIApplication.shared.open(url)
                    }) {
                        HStack {
                            Text("Send Feedback")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                    }
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarTitle("More")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView().environmentObject(settingsModel())
    }
}
