//
//  WebView.swift
//  CyberNewsSwiftUI
//
//  Created by Steve Kerney on 5/13/20.
//  Copyright © 2020 Steve Kerney. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    let urlString: String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let urlString = urlString, let postURL = URL(string: urlString) else {
            return
        }
        let request = URLRequest(url: postURL)
        uiView.load(request)
    }
}
