//
//  Posts.swift
//  CyberNewsSwiftUI
//
//  Created by Steve Kerney on 5/12/20.
//  Copyright © 2020 Steve Kerney. All rights reserved.
//

import Foundation

// MARK: - News
struct News: Codable {
    let hits: [Post]
}

// MARK: - Post aka Hit
struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let url: String?
    let author: String
    let points: Int
    let objectID: String
}
