//
//  Movie.swift
//  Netflix Clone
//
//  Created by imac on 24/08/2023.
//

import Foundation

struct TrendingTitleResponse: Codable {
    let results: [Title]
}

struct Title: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}


/*
 adult = 0;
 "backdrop_path" = "/lbJG35jQE6erMW68YmQ1moE8TZQ.jpg";
 "first_air_date" = "2023-08-22";
 "genre_ids" =             (
     10765,
     10759
 );
 id = 114461;
 "media_type" = tv;
 name = Ahsoka;
 "origin_country" =             (
     US
 );
 "original_language" = en;
 "original_name" = Ahsoka;
 overview = "Former Jedi Knight Ahsoka Tano investigates an emerging threat to a vulnerable galaxy.";
 popularity = "281.673";
 "poster_path" = "/laCJxobHoPVaLQTKxc14Y2zV64J.jpg";
 "vote_average" = "8.362";
 "vote_count" = 47;
 */
