//
//  Movie.swift
//  Movies-MVVM
//
//  Created by Halis Kayar on 12.01.2023.
//

import Foundation

struct Movie: Decodable {
    let results: [MovieResult]?
}

struct MovieResult: Decodable {
    let id: Int?
    let posterPath: String?
    let overview, releaseDate, title: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case posterPath = "poster_path"
        case overview, title
        case releaseDate = "release_date"
    }
    
    var _id: Int {
        id ?? Int.min
    }
    
    var _posterPath: String {   //completed property
        posterPath ?? ""
    }
}
