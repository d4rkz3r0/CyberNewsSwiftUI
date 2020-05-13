//
//  PostView.swift
//  CyberNewsSwiftUI
//
//  Created by Steve Kerney on 5/13/20.
//  Copyright © 2020 Steve Kerney. All rights reserved.
//

import SwiftUI
import WebKit

struct PostView: View {
    let postURL: String?

    var body: some View {
        WebView(urlString: postURL)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(postURL: "https://www.google.com")
    }
}
