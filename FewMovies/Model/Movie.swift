//
//  Movie.swift
//  FewMovies
//
//  Created by Fewcher on 08.06.2022.
//

import Foundation

struct TopLevelJSON: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let title: String
    let rating: Double
    let overview: String
    let imageAsString: String?
    
    enum CodingKeys: String, CodingKey {
        case title
        case rating = "vote_average"
        case overview
        case imageAsString = "poster_path"
    }
}
