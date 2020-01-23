//
//  NetworkManager.swift
//  H4X0R
//
//  Created by Alexander Smith on 1/23/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//
//  Purpose: Network with API (Req/Res)

import Foundation

class NetworkManager {
    
    // Fetch Data from API and return Decoded JSON
    func fetchData() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            // Start a Data Task with URLSession
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            // Decode JSON Data
                            let results = try decoder.decode(Results.self, from: safeData)
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            // Start Networking Task
            task.resume()
        }
    }
    
}
