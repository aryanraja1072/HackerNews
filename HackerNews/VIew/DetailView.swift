//
//  DetailView.swift
//  HackerNews
//
//  Created by Devika Raja on 30/06/20.
//  Copyright © 2020 Devika Raja. All rights reserved.
//

import SwiftUI
import WebKit
struct DetailView: View {
    var url:String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct WebView:UIViewRepresentable{
    
    var urlString:String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
                let request = URLRequest(url:url)
                uiView.load(request)
            }
        }
    }
    
    
}
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url:"https://www.google.com")
    }
}
