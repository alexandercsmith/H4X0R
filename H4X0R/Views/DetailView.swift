//
//  DetailView.swift
//  H4X0R
//
//  Created by Alexander Smith on 1/23/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import SwiftUI

struct DetailView: View {
  // URL of Post Item
  let url: String?
  
  var body: some View {
    WebView(urlString: url)
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(url: "https://www.google.com")
  }
}
