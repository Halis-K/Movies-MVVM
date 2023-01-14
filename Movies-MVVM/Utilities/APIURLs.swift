//
//  APIURLs.swift
//  Movies-MVVM
//
//  Created by Halis Kayar on 12.01.2023.
//

import Foundation

enum APIURLs {
    static func movies(page: Int) -> String {
        "https://api.themoviedb.org/3/movie/popular?api_key=601cdad736a435f4688d2e64eee0da88&language=en-US&page=\(page)"
    }
    
    static func imageUrl(posterPath: String) -> String {
        "https://image.tmdb.org/t/p/w500/\(posterPath)"
    }
    
    static func detail(id: Int) -> String {
        "https://api.themoviedb.org/3/movie/\(id)?api_key=601cdad736a435f4688d2e64eee0da88&language=en-US"
    }
}
