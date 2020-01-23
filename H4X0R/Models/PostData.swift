//
//  PostData.swift
//  H4X0R
//
//  Created by Alexander Smith on 1/23/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//
//  Purpose: API Data

import Foundation

// Collection of Post's
struct Results: Decodable {
    let hits: [Post]
}

// API Data Decoded Object
struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
