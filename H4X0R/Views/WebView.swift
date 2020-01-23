//
//  WebView.swift
//  H4X0R
//
//  Created by Alexander Smith on 1/23/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

// Represents a UIKit View
struct WebView: UIViewRepresentable {
  let urlString: String?
  
  // Initailize WebView
  func makeUIView(context: Context) -> WKWebView {
    return WKWebView()
  }
  
  // Update WebView Data
  func updateUIView(_ uiView: WKWebView, context: Context) {
    if let safeString = urlString {
      if let url = URL(string: safeString) {
        let request = URLRequest(url: url)
        uiView.load(request)
      }
    }
  }
}
