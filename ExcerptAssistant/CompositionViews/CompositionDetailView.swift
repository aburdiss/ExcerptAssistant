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
                            .font(.callout)
                            .padding(.horizontal)
                        Text(self.composition.date)
                            .padding(.horizontal)
                        Divider()
                            .background(Color.green)
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
                        HStack {
                            Text("Mutes:")
                                .font(.headline)
                            Text(self.composition.mutes)
                        }
                        .padding(.horizontal)
                        VStack(alignment: .leading) {
                            Text("Common Difficulties:")
                                .font(.headline)
                            Text(self.composition.commonDifficulties)
                                .padding(.horizontal)
                            }
                            .padding(.horizontal)
                        Divider()
                            .background(Color.green)
                            .padding(.horizontal)
                    }
                    Group {
                        ForEach(self.composition.excerpts) { item in
                            Group {
                                Text(item.description)
                                    .font(.headline)
                                    .padding(.horizontal)
                                    .padding(.top)
                                Text("Measures: \(item.measures)")
                                    .padding(.horizontal)
                                Text("Average Tempo: \(item.avgTempo)")
                                    .padding(.horizontal)
                                    .padding(.bottom)
                            }
                            ForEach(item.pictures, id:\.self) { picture in
                                Group {
                                    Text("\(picture[0])")
                                    .padding(.horizontal)
                                    Image("\(picture[1])")
                                        .resizable()
                                        .scaledToFit()
                                        .background(Color.white)
    //                                FixedImage(imageName: "\(picture[1])")
                                        
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
                            //Text(item[0])
                            //WebView(request: URLRequest(url: URL(string: "https://youtu.be/\(item[1])")!))
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

struct WebView : UIViewRepresentable {
    let request: URLRequest

    func makeUIView(context: Context) -> WKWebView  {
        let configuration = WKWebViewConfiguration()
        configuration
            .allowsInlineMediaPlayback = true
        configuration
            .mediaTypesRequiringUserActionForPlayback = .all
        
        let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: 375, height: 375), configuration:
        configuration)
        
        // I don't think that this is needed.
        webView.translatesAutoresizingMaskIntoConstraints = false
        
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct FixedImage: UIViewRepresentable {

    var imageName: String

    func makeUIView(context: Context) -> UIImageView {
        let imageView = UIImageView(image: UIImage(named: imageName))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }

    func updateUIView(_ uiView: UIImageView, context: Context) {
        uiView.image = UIImage(named: imageName)
        
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
