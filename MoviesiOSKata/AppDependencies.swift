//
//  File.swift
//  MoviesiOSKata
//
//  Created by AppleDev on 12/11/16.
//  Copyright © 2016 xurxodev. All rights reserved.
//

import Foundation
import UIKit

class AppDependencies {
    
    let movieRepository: MovieRepositoryInterface
    
    init() {
        movieRepository  = DiskMovieRepository()
    }
    
    
    func installRootViewControllerIntoWindow(window: UIWindow) {
       
        if let navigationController = window.rootViewController as? UINavigationController{
            if let firstViewController = navigationController.visibleViewController as? MoviesTableViewController{
                firstViewController.setDiskMovieRepository(movieRepository: movieRepository)
            }
        }
        
    }
}
