//
//  MovieRepositoryInterface.swift
//  MoviesiOSKata
//
//  Created by AppleDev on 12/11/16.
//  Copyright © 2016 xurxodev. All rights reserved.
//

import Foundation


protocol MovieRepositoryInterface{
    func getMovies() -> [Movie]
}
