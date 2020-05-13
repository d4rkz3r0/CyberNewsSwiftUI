//
//  NetworkManager.swift
//  CyberNewsSwiftUI
//
//  Created by Steve Kerney on 5/12/20.
//  Copyright © 2020 Steve Kerney. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {

    @Published var posts = [Post]()

    // No API Key required
    let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page")

    func fetchPosts() {
        guard let url = url else {
            return
        }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Unable to fetch data.")
                return
            }
            guard let news = try? JSONDecoder().decode(News.self, from: data) else {
                print("Unable to decode JSON.")
                return
            }
            // Publish change on main thread
            DispatchQueue.main.async {
                self.posts = news.hits
            }
        }
        task.resume()
    }
}
