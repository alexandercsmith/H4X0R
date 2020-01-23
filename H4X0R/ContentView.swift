//
//  ContentView.swift
//  H4X0R
//
//  Created by Alexander Smith on 1/23/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("H4X0R News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Helloo"),
    Post(id: "3", title: "Hellooo"),
    Post(id: "4", title: "Helloooo"),
    Post(id: "5", title: "Hellooooo")
]
