//
//  DiskMovieRepository.swift
//  MoviesiOSKata
//
//  Created by Jorge Sánchez on 2/11/16.
//  Copyright © 2016 xurxodev. All rights reserved.
//

import Foundation

class DiskMovieRepository:MovieRepository {
    
    func get() -> [Movie]{
        var movies:[Movie] = []

        let url = NSBundle.mainBundle().URLForResource("Movies", withExtension: "json")
        let data = NSData(contentsOfURL: url!)
        
        do {
            let json = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
            
            if let moviesjson = json as? [[String: AnyObject]] {
                for moviejson in moviesjson {
                    let movie: Movie = Movie();
                    movie.title = moviejson["title"] as? String
                    movie.image = moviejson["image"] as? String

                    movies.append(movie)
                }
            }
        } catch {
            print("error serializing JSON: \(error)")
        }
        
        return movies;
    }
}
