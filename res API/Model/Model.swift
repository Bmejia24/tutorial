//
//  Model.swift
//  res API
//
//  Created by Byron on 2/22/21.
//

import Foundation

struct MoviesData: Decodable {
    let Movies: [Movie]
    
    private enum CodingKeys: String, CodingKey{
        case Movies = "results"
    }
}

struct Movie: Decodable {
    let title: String?
    let year: String?
    let rate: Double?
    let posterImage: String?
    let overview: String?
    
    private enum CodingKeys: String, CodingKey {
        case title, overview
        case year = "release_date"
        case rate = "vote_average"
        case posterImage = "poster_path"
        
    }
    
}
