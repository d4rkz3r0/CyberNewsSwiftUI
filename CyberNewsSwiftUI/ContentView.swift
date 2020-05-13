//
//  ContentView.swift
//  CyberNewsSwiftUI
//
//  Created by Steve Kerney on 5/12/20.
//  Copyright © 2020 Steve Kerney. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    // Listen for updates on obsereved property "posts"
    @ObservedObject var networkManager = NetworkManager()

    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                return HStack {
                    Text("\(post.points)")
                    Text("\(post.title)")
                }
            }
        .navigationBarTitle(Text("Cyber News"))
        }

        // viewDidLoad() equivalent in SwiftUI
        .onAppear {
            self.networkManager.fetchPosts()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
